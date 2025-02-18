import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { CreateEstablishmentInput } from './dto/input/create_full_itens-establishment.input';
import { PrismaService } from 'src/prisma/prisma.service';
import { UpdatePartialEstablishmentInput } from './dto/input/update_partial-establishment.input';
import { ReturnPartialProductsFromEstablishmentDto } from './dto/view/return_partial-products-from-establishment.dto.view';
import { UpdatePartialProductsEstablishmentInput } from './dto/input/update_partial-establishment-products.input';
import { ReturnPartialAddressFromEstablishmentDto } from './dto/view/return_partial-address-from-establishment.dto.view';
import { UpdateAddressInput } from 'src/address/dto/update-address.input';
import { UpdateFullItensEstablishmentInput } from './dto/input/update_full_itens-establishment.input';
import { CreateAddressInput } from 'src/address/dto/create-address.input';
import { EstablishmentEntity } from './entities/establishment.entity';
import { Supplier } from 'src/shared/prismagraphql/supplier';
import { UserService } from 'src/user/user.service';

@Injectable()
export class EstablishmentService {
  constructor(
    private readonly prismaService: PrismaService,
    private readonly userService: UserService,
  ) {}

  async create(
    data: CreateEstablishmentInput,
    addressData: CreateAddressInput,
    userId: string,
  ): Promise<EstablishmentEntity> {
    await this.checkExistsUserbyId(userId);

    const supplier = await this.prismaService.supplier.findUnique({
      where: { userId: userId },
    });

    this.validateSuplier(supplier);

    this.containSupplier(data.supplierIds, supplier.id);

    await this.checkExistsAllSuppliers(data.supplierIds);

    const address = await this.prismaService.address.create({
      data: addressData,
    });

    const establishment = await this.prismaService.establishment.create({
      data: {
        name: data.name,
        openingHours: data.openingHours,
        closingHours: data.closingHours,
        commercialPhone: data.commercialPhone,
        taxId: data.taxId,
        addressId: address.id,
        products: data.products
          ? { connect: data.products.map((product) => ({ id: product.id })) }
          : undefined,
      },
    });

    if (data.supplierIds && data.supplierIds.length > 0) {
      await this.prismaService.supplierEstablishment.createMany({
        data: data.supplierIds.map((supplierId) => ({
          supplierId: supplierId,
          establishmentId: establishment.id,
        })),
      });
    }

    return establishment;
  }

  async update(
    data: UpdateFullItensEstablishmentInput,
    userId: string,
  ): Promise<EstablishmentEntity> {
    await this.checkExistsUserbyId(userId);
    await this.checkExistsEstablishmentById(data.id);

    const supplier = await this.prismaService.supplier.findUnique({
      where: { userId: userId },
    });

    this.validateSuplier(supplier);

    await this.checkRelationSupplierEstablishment(data.id, supplier.id);

    if (data.products && data.products.length > 0) {
      await Promise.all(
        data.products.map((product) =>
          this.prismaService.product.update({
            where: { id: product.id },
            data: { establishmentId: data.id },
          }),
        ),
      );
    }

    if (data.supplierIds && data.supplierIds.length > 0) {
      await this.prismaService.supplierEstablishment.deleteMany({
        where: {
          establishmentId: data.id,
          supplierId: { notIn: data.supplierIds },
        },
      });

      await Promise.all(
        data.supplierIds.map((supplierId) =>
          this.prismaService.supplierEstablishment.upsert({
            where: {
              supplierId_establishmentId: {
                supplierId,
                establishmentId: data.id,
              },
            },
            update: {},
            create: { supplierId, establishmentId: data.id },
          }),
        ),
      );
    }

    const establishment = await this.prismaService.establishment.update({
      where: { id: data.id },
      data: {
        name: data.name,
        openingHours: data.openingHours,
        closingHours: data.closingHours,
        commercialPhone: data.commercialPhone,
        taxId: data.taxId,
      },
      include: {
        products: true,
        suppliers: true,
        address: true,
      },
    });

    return establishment;
  }

  async updatePartial(
    data: UpdatePartialEstablishmentInput,
    userId: string,
  ): Promise<EstablishmentEntity> {
    await this.checkExistsEstablishmentById(data.id);
    await this.checkExistsUserbyId(userId);

    const supplier = await this.prismaService.supplier.findUnique({
      where: { userId: userId },
    });

    this.validateSuplier(supplier);

    await this.checkRelationSupplierEstablishment(data.id, supplier.id);

    const establishment = await this.prismaService.establishment.update({
      where: { id: data.id },
      data: {
        name: data.name,
        openingHours: data.openingHours,
        closingHours: data.closingHours,
        commercialPhone: data.commercialPhone,
        taxId: data.taxId,
      },
    });

    return establishment;
  }

  async updateProducts(
    data: UpdatePartialProductsEstablishmentInput,
    userId: string,
  ): Promise<ReturnPartialProductsFromEstablishmentDto> {
    await this.checkExistsEstablishmentById(data.id);
    await this.checkExistsUserbyId(userId);

    if (!data.products || data.products.length === 0) {
      throw new HttpException(
        'You cannot be a supplier of your own establishment',
        HttpStatus.BAD_REQUEST,
      );
    }

    const supplier = await this.prismaService.supplier.findUnique({
      where: { userId: userId },
    });

    this.validateSuplier(supplier);

    await this.checkRelationSupplierEstablishment(data.id, supplier.id);

    await Promise.all(
      data.products.map((product) =>
        this.prismaService.product.update({
          where: { id: product.id },
          data: {
            title: product.title,
            description: product.description,
            brand: product.brand,
            imagens: product.imagens,
            isAvaliable: product.isAvaliable,
            quantity: product.quantity,
            category: product.category,
            status: product.status,
            price: product.price,
            establishmentId: data.id,
          },
        }),
      ),
    );

    const establishment = await this.prismaService.establishment.findUnique({
      where: { id: data.id },
      include: { products: true },
    });

    return new ReturnPartialProductsFromEstablishmentDto(establishment);
  }

  async updateAddress(
    data: UpdateAddressInput,
    addressData: CreateAddressInput,
    userId: string,
  ): Promise<ReturnPartialAddressFromEstablishmentDto> {
    await this.checkExistsEstablishmentById(data.id);
    await this.checkExistsUserbyId(userId);

    const supplier = await this.prismaService.supplier.findUnique({
      where: { userId: userId },
    });

    this.validateSuplier(supplier);
    await this.checkRelationSupplierEstablishment(data.id, supplier.id);

    const establishmentEntity =
      await this.prismaService.establishment.findUnique({
        where: { id: data.id },
        include: { suppliers: { select: { supplierId: true } }, address: true },
      });

    if (!establishmentEntity) {
      throw new HttpException('Establishment not found', HttpStatus.NOT_FOUND);
    }

    return this.prismaService.$transaction(async (tx) => {
      if (establishmentEntity.address) {
        await tx.address.delete({
          where: { id: establishmentEntity.address.id },
        });
      }

      const address = await tx.address.create({
        data: addressData,
      });

      const establishment = await tx.establishment.update({
        where: { id: data.id },
        data: { addressId: address.id },
        include: { address: true },
      });

      return new ReturnPartialAddressFromEstablishmentDto(establishment);
    });
  }

  async delete(id: string, userId: string): Promise<void> {
    await this.checkExistsEstablishmentById(id);
    await this.checkExistsUserbyId(userId);

    const supplier = await this.prismaService.supplier.findUnique({
      where: { userId: userId },
    });

    this.validateSuplier(supplier);
    await this.checkRelationSupplierEstablishment(id, supplier.id);

    const { addressId } = await this.prismaService.establishment.findUnique({
      where: { id },
      select: {
        addressId: true,
      },
    });

    await this.prismaService.establishment.delete({
      where: { id },
    });

    await this.prismaService.address.delete({
      where: { id: addressId },
    });
  }

  async fetchProductsByEstablishmentId(
    id: string,
  ): Promise<ReturnPartialProductsFromEstablishmentDto> {
    await this.checkExistsEstablishmentById(id);

    const establishment = await this.prismaService.establishment.findUnique({
      where: { id },
      include: {
        products: true,
      },
    });

    return new ReturnPartialProductsFromEstablishmentDto(establishment);
  }

  async findById(id: string): Promise<EstablishmentEntity> {
    await this.checkExistsEstablishmentById(id);
    const establishment = await this.prismaService.establishment.findUnique({
      where: { id },
      include: {
        address: true,
        products: true,
        _count: true,
      },
    });

    return establishment;
  }

  async findAll(): Promise<EstablishmentEntity[]> {
    const establishments = await this.prismaService.establishment.findMany({
      include: {
        address: true,
        products: true,
        _count: true,
      },
    });

    return establishments;
  }

  async fetchProductsAllByEsyablishmentId(): Promise<
    ReturnPartialProductsFromEstablishmentDto[]
  > {
    const establishments = await this.prismaService.establishment.findMany({
      include: {
        products: true,
      },
    });

    return establishments.map(
      (establishment) =>
        new ReturnPartialProductsFromEstablishmentDto(establishment),
    );
  }

  private async checkExistsEstablishmentById(id: string): Promise<void> {
    const exists = await this.existsEstablismentById(id);

    if (!exists) {
      throw new HttpException(
        `Establishment with id:${id} does not exist`,
        HttpStatus.NOT_FOUND,
      );
    }
  }

  private async checkExistsAllSuppliers(supplierIds: string[]) {
    if (!supplierIds || supplierIds.length < 1) {
      throw new HttpException(
        'List of suppliers invalid',
        HttpStatus.BAD_REQUEST,
      );
    }
    for (const id of supplierIds) {
      const supplier = await this.prismaService.supplier.findUnique({
        where: { id: id },
      });
      this.validateSuplier(supplier);
    }
  }

  async existsEstablismentById(id: string): Promise<boolean> {
    const exists = await this.prismaService.establishment.findUnique({
      where: { id },
      select: { id: true },
    });

    return exists !== null;
  }

  private async checkExistsUserbyId(userId: string) {
    const exists = await this.userService.existsEstablismentById(userId);

    if (!exists) {
      throw new HttpException(
        `User id:${userId} does not exist`,
        HttpStatus.NOT_FOUND,
      );
    }
  }

  private async checkExistsSupplier(userId: string) {
    const supplier = await this.prismaService.supplier.findUnique({
      where: { userId: userId },
    });

    this.validateSuplier(supplier);
  }

  private validateSuplier(supplier: Supplier) {
    if (!supplier) {
      throw new HttpException('Supplier not found', HttpStatus.UNAUTHORIZED);
    }
  }

  containSupplier(suppliersIds: string[], id: string) {
    if (
      !suppliersIds ||
      suppliersIds.length < 1 ||
      !suppliersIds.includes(id)
    ) {
      throw new HttpException(
        'You cannot be a supplier of your own establishment',
        HttpStatus.UNAUTHORIZED,
      );
    }
  }

  async checkRelationSupplierEstablishment(
    establishmentId: string,
    supplierId: string,
  ) {
    const establishmentEntity =
      await this.prismaService.establishment.findUnique({
        where: { id: establishmentId },
        include: {
          suppliers: {
            select: { supplierId: true },
          },
        },
      });

    const exists = establishmentEntity.suppliers.some(
      (s) => s.supplierId === supplierId,
    );

    if (!exists) {
      throw new HttpException(
        'You cannot be a supplier of your own establishment',
        HttpStatus.UNAUTHORIZED,
      );
    }
  }
}
