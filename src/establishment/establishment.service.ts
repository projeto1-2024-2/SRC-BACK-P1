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
import { ProductService } from 'src/product/product.service';

@Injectable()
export class EstablishmentService {
  constructor(
    private readonly prismaService: PrismaService,
    private readonly userService: UserService,
    private readonly productService: ProductService,
  ) {}

  async create(
    data: CreateEstablishmentInput,
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
      data: data.newAddress,
    });

    const establishment = await this.prismaService.establishment.create({
      data: {
        name: data.name,
        openingHours: data.openingHours,
        closingHours: data.closingHours,
        commercialPhone: data.commercialPhone,
        taxId: data.taxId,
        addressId: address.id,
      },
    });

    if (data.supplierIds && data.supplierIds.length > 0) {
      await this.prismaService.supplierEstablishment.createMany({
        data: data.supplierIds.map((supplierId) => ({
          supplierId,
          establishmentId: establishment.id,
        })),
      });
    }

    return await this.prismaService.establishment.findUnique({
      where: { id: establishment.id },
      include: {
        address: true,
        products: true,
        suppliers: true,
      },
    });
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

    if (data.newSupplierIds && data.newSupplierIds?.length > 0) {
      await this.checkExistsAllSuppliers(data.newSupplierIds);
    }

    if (data.deleteSupplierIds && data.deleteSupplierIds?.length > 0) {
      await this.checkExistsAllSuppliers(data.deleteSupplierIds);
    }

    if (data.newProducts && data.newProducts?.length > 0) {
      await this.productService.createMany(data.newProducts, data.id);
    }

    if (data.updateProducts && data.updateProducts?.length > 0) {
      await this.productService.updateMany(data.updateProducts, data.id);
    }

    if (data.newProducts && data.newProducts?.length > 0) {
      await this.productService.createMany(data.newProducts, data.id);
    }

    return this.prismaService.$transaction(async (prisma) => {
      if (data.deleteSupplierIds && data.deleteSupplierIds?.length > 0) {
        await prisma.supplierEstablishment.deleteMany({
          where: {
            establishmentId: data.id,
            supplierId: { in: data.deleteSupplierIds },
          },
        });
      }

      if (data.newSupplierIds && data.newSupplierIds?.length > 0) {
        await prisma.supplierEstablishment.createMany({
          data: data.newSupplierIds.map((supplierId) => ({
            supplierId,
            establishmentId: data.id,
          })),
          skipDuplicates: true,
        });
      }

      const establishmentData = await prisma.establishment.findUnique({
        where: { id: data.id },
        select: { addressId: true },
      });

      let addressId = establishmentData?.addressId;
      if (data.newAddress) {
        const newAddress = await prisma.address.create({
          data: data.newAddress,
        });
        addressId = newAddress.id;
      }

      const updatedEstablishment = await prisma.establishment.update({
        where: { id: data.id },
        data: {
          name: data.name,
          openingHours: data.openingHours,
          closingHours: data.closingHours,
          commercialPhone: data.commercialPhone,
          taxId: data.taxId,
          addressId: addressId,
        },
        include: {
          products: true,
          suppliers: true,
          address: true,
        },
      });

      if (data.newAddress && establishmentData?.addressId) {
        await prisma.address.delete({
          where: { id: establishmentData.addressId },
        });
      }

      return updatedEstablishment;
    });
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

    const supplier = await this.prismaService.supplier.findUnique({
      where: { userId: userId },
    });

    this.validateSuplier(supplier);

    await this.checkRelationSupplierEstablishment(data.id, supplier.id);

    if (data.newProducts && data.newProducts?.length > 0) {
      await this.productService.createMany(data.newProducts, data.id);
    }

    if (data.updateProducts && data.updateProducts?.length > 0) {
      await this.productService.updateMany(data.updateProducts, data.id);
    }

    if (data.deleteProducts && data.deleteProducts?.length > 0) {
      await this.productService.deleteMany(data.deleteProducts, data.id);
    }

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

  async delete(id: string, userId: string): Promise<boolean> {
    await this.checkExistsEstablishmentById(id);
    await this.checkExistsUserbyId(userId);

    const supplier = await this.prismaService.supplier.findUnique({
      where: { userId: userId },
    });

    this.validateSuplier(supplier);
    await this.checkRelationSupplierEstablishment(id, supplier.id);

    await this.prismaService.establishment.delete({
      where: { id },
    });
    return true;
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
        suppliers: true,
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
        suppliers: true,
        _count: true,
      },
    });

    return establishments;
  }

  async fetchProductsAll(): Promise<
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
    if (!supplierIds?.length) {
      throw new HttpException(
        'List of suppliers invalid',
        HttpStatus.BAD_REQUEST,
      );
    }

    const suppliers = await this.prismaService.supplier.findMany({
      where: { id: { in: supplierIds } },
      select: { id: true },
    });

    const foundIds = new Set(suppliers.map((s) => s.id));
    const missingIds = supplierIds.filter((id) => !foundIds.has(id));

    if (missingIds.length) {
      throw new HttpException(
        `Suppliers not found: ${missingIds.join(', ')}`,
        HttpStatus.NOT_FOUND,
      );
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
    const exists = await this.userService.existsById(userId);

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
