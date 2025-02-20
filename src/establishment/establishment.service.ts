import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { CreateEstablishmentInput } from './dto/input/create_full_itens-establishment.input';
import { PrismaService } from 'src/prisma/prisma.service';
import { UpdatePartialEstablishmentInput } from './dto/input/update_partial-establishment.input';
import { ReturnPartialProductsFromEstablishmentDto } from './dto/view/return_partial-products-from-establishment.dto.view';
import { UpdatePartialProductsEstablishmentInput } from './dto/input/update_partial-establishment-products.input';
import { ReturnPartialAddressFromEstablishmentDto } from './dto/view/return_partial-address-from-establishment.dto.view';
import { UpdateFullItensEstablishmentInput } from './dto/input/update_full_itens-establishment.input';
import { EstablishmentEntity } from './entities/establishment.entity';
import { UserService } from 'src/user/user.service';
import { ProductService } from 'src/product/product.service';
import { UserEntity } from 'src/user/entities/user.entity';
import { UpdatePartialAddressEstablishmentInput } from './dto/input/update_partial-establishment-address.input';

@Injectable()
export class EstablishmentService {
  constructor(
    private readonly prismaService: PrismaService,
    private readonly userService: UserService,
    private readonly productService: ProductService,
  ) {}

  async create(
    data: CreateEstablishmentInput,
    user: UserEntity,
  ): Promise<EstablishmentEntity> {
    const supplier = await this.prismaService.supplier.findUnique({
      where: { userId: user.id },
    });

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
    user: UserEntity,
  ): Promise<EstablishmentEntity> {
    await this.checkExistsEstablishmentById(data.id);

    const supplier = await this.prismaService.supplier.findUnique({
      where: { userId: user.id },
    });

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
    if (data.deleteProducts && data.deleteProducts?.length > 0) {
      await this.productService.deleteMany(data.deleteProducts, data.id);
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

      if (data.newAddress) {
        await prisma.address.update({
          where: { id: establishmentData.addressId },
          data: data.newAddress,
        });
      }

      const updatedEstablishment = await prisma.establishment.update({
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

      return updatedEstablishment;
    });
  }

  async updatePartial(
    data: UpdatePartialEstablishmentInput,
    user: UserEntity,
  ): Promise<EstablishmentEntity> {
    await this.checkExistsEstablishmentById(data.id);

    const supplier = await this.prismaService.supplier.findUnique({
      where: { userId: user.id },
    });

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
    user: UserEntity,
  ): Promise<ReturnPartialProductsFromEstablishmentDto> {
    await this.checkExistsEstablishmentById(data.id);

    const supplier = await this.prismaService.supplier.findUnique({
      where: { userId: user.id },
    });
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
    data: UpdatePartialAddressEstablishmentInput,
    user: UserEntity,
  ): Promise<ReturnPartialAddressFromEstablishmentDto> {
    await this.checkExistsEstablishmentById(data.id);

    const supplier = await this.prismaService.supplier.findUnique({
      where: { userId: user.id },
    });

    await this.checkRelationSupplierEstablishment(data.id, supplier.id);

    const establishmentEntity =
      await this.prismaService.establishment.findUnique({
        where: { id: data.id },
        include: { address: true },
      });

    await this.prismaService.address.update({
      where: { id: establishmentEntity.address.id },
      data: data.newAddress,
    });

    const establishment = await this.prismaService.establishment.findUnique({
      where: { id: data.id },
      include: { address: true },
    });

    return new ReturnPartialAddressFromEstablishmentDto(establishment);
  }

  async delete(id: string, user: UserEntity): Promise<boolean> {
    await this.checkExistsEstablishmentById(id);

    const supplier = await this.prismaService.supplier.findUnique({
      where: { userId: user.id },
    });

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
    if (!supplierIds || !supplierIds?.length) {
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
