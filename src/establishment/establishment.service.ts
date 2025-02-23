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
import { CreateProductInput } from 'src/product/dto/create-product.input';
import { UpdateProductInput } from 'src/product/dto/update-product.input';
import { CreateAddressInput } from 'src/address/dto/create-address.input';

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
    await this.containSupplier(data.supplierIds, user);

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

    await this.updateSuppliersEstablishment(
      data.supplierIds,
      [],
      establishment.id,
    );

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
    await this.checkRelationSupplierEstablishment(data.id, user);

    await this.updateSuppliersEstablishment(
      data.newSupplierIds,
      data.deleteSupplierIds,
      data.id,
    );

    await this.updateProductsEstablishment(
      data.newProducts,
      data.updateProducts,
      data.deleteProducts,
      data.id,
    );

    await this.updateAddressEstablishment(data.newAddress, data.id);

    return await this.prismaService.establishment.update({
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
  }

  async updatePartial(
    data: UpdatePartialEstablishmentInput,
    user: UserEntity,
  ): Promise<EstablishmentEntity> {
    await this.checkExistsEstablishmentById(data.id);
    await this.checkRelationSupplierEstablishment(data.id, user);

    return await this.prismaService.establishment.update({
      where: { id: data.id },
      data: {
        name: data.name,
        openingHours: data.openingHours,
        closingHours: data.closingHours,
        commercialPhone: data.commercialPhone,
        taxId: data.taxId,
      },
    });
  }

  async updateProducts(
    data: UpdatePartialProductsEstablishmentInput,
    user: UserEntity,
  ): Promise<ReturnPartialProductsFromEstablishmentDto> {
    await this.checkExistsEstablishmentById(data.id);
    await this.checkRelationSupplierEstablishment(data.id, user);

    await this.updateProductsEstablishment(
      data.newProducts,
      data.updateProducts,
      data.deleteProducts,
      data.id,
    );

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
    await this.checkRelationSupplierEstablishment(data.id, user);

    await this.updateAddressEstablishment(data.newAddress, data.id);

    const establishment = await this.prismaService.establishment.findUnique({
      where: { id: data.id },
      include: { address: true },
    });

    return new ReturnPartialAddressFromEstablishmentDto(establishment);
  }

  async delete(id: string, user: UserEntity): Promise<boolean> {
    await this.checkExistsEstablishmentById(id);
    await this.checkRelationSupplierEstablishment(id, user);

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

  private async updateProductsEstablishment(
    newProducts: CreateProductInput[],
    updateProducts: UpdateProductInput[],
    deleteProducts: string[],
    id: string,
  ) {
    if (newProducts && newProducts.length) {
      await this.productService.createMany(newProducts, id);
    }
    if (updateProducts && updateProducts.length) {
      await this.productService.updateMany(updateProducts, id);
    }
    if (deleteProducts && deleteProducts.length) {
      await this.productService.deleteMany(deleteProducts, id);
    }
  }

  private async updateSuppliersEstablishment(
    newSupplierIds: string[],
    deleteSupplierIds: string[],
    establishmentId: string,
  ) {
    try {
      if (newSupplierIds && newSupplierIds.length > 0) {
        await this.checkExistsAllSuppliers(newSupplierIds);
        await this.prismaService.supplierEstablishment.createMany({
          data: newSupplierIds.map((supplierId) => ({
            supplierId,
            establishmentId,
          })),
          skipDuplicates: true,
        });
      }
    } catch (error) {
      if (error instanceof HttpException) {
        throw error;
      }

      throw new HttpException(
        'Erro ao adicionar fornecedores.',
        HttpStatus.BAD_REQUEST,
      );
    }

    try {
      if (deleteSupplierIds && deleteSupplierIds.length > 0) {
        await this.checkExistsAllSuppliers(deleteSupplierIds);
        await this.prismaService.supplierEstablishment.deleteMany({
          where: {
            establishmentId,
            supplierId: { in: deleteSupplierIds },
          },
        });
      }
    } catch (error) {
      if (error instanceof HttpException) {
        throw error;
      }

      throw new HttpException(
        'Erro ao remover fornecedores.',
        HttpStatus.BAD_REQUEST,
      );
    }
  }

  private async updateAddressEstablishment(
    newAddress: CreateAddressInput,
    id: string,
  ) {
    if (newAddress) {
      const establishmentData =
        await this.prismaService.establishment.findUnique({
          where: { id: id },
          select: { addressId: true },
        });
      await this.prismaService.address.update({
        where: { id: establishmentData.addressId },
        data: newAddress,
      });
    }
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
    if (!supplierIds || !supplierIds.length) {
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

  private async containSupplier(suppliersIds: string[], user: UserEntity) {
    const supplier = await this.prismaService.supplier.findUnique({
      where: { userId: user.id },
    });
    if (
      !suppliersIds ||
      !suppliersIds.length ||
      !suppliersIds.includes(supplier.id)
    ) {
      throw new HttpException(
        'You cannot be a supplier of your own establishment',
        HttpStatus.UNAUTHORIZED,
      );
    }
  }

  private async checkRelationSupplierEstablishment(
    establishmentId: string,
    user: UserEntity,
  ) {
    if (user.role !== 'ADMIN') {
      const establishmentEntity =
        await this.prismaService.establishment.findUnique({
          where: { id: establishmentId },
          include: {
            suppliers: {
              select: { supplierId: true },
            },
          },
        });

      const supplier = await this.prismaService.supplier.findUnique({
        where: { userId: user.id },
      });

      const exists = establishmentEntity.suppliers.some(
        (s) => s.supplierId === supplier.id,
      );

      if (!exists) {
        throw new HttpException(
          'You cannot be a supplier of your own establishment',
          HttpStatus.UNAUTHORIZED,
        );
      }
    }
  }
}
