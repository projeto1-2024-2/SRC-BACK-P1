import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { CreateEstablishmentInput } from './dto/input/create_full_itens-establishment.input';
import { PrismaService } from 'src/prisma/prisma.service';
import { ReturnFullItensEstablishmentDto } from './dto/view/return_full_itens-establishment-dto.view';
import { UpdatePartialEstablishmentInput } from './dto/input/update_partial-establishment.input';
import { ReturnPartialProductsFromEstablishmentDto } from './dto/view/return_partial-products-from-establishment.dto.view';
import { UpdatePartialProductsEstablishmentInput } from './dto/input/update_partial-establishment-products.input';
import { ReturnPartialAddressFromEstablishmentDto } from './dto/view/return_partial-address-from-establishment.dto.view';
import { UpdateAddressInput } from 'src/address/dto/update-address.input';
import { UpdateFullItensEstablishmentInput } from './dto/input/update_full_itens-establishment.input';

@Injectable()
export class EstablishmentService {
  constructor(private readonly prismaService: PrismaService) {}

  async create(
    data: CreateEstablishmentInput,
  ): Promise<ReturnFullItensEstablishmentDto> {
    const addressData = data.address
      ? {
          connectOrCreate: {
            where: { id: data.address.id || undefined },
            create: {
              street: data.address.street,
              number: data.address.number,
              complement: data.address.complement,
              neighbourhood: data.address.neighbourhood,
              zipCode: data.address.zipCode,
              city: data.address.city,
              state: data.address.state,
            },
          },
        }
      : undefined;

    const productsData = data.products
      ? {
          connect: data.products.map((product) => ({ id: product.id })),
        }
      : undefined;

    const supplierData = data.supplier
      ? {
          connect: data.supplier.map((supplier) => ({ id: supplier.id })),
        }
      : undefined;

    const establishment = await this.prismaService.establishment.create({
      data: {
        name: data.name,
        openingHours: data.openingHours,
        closingHours: data.closingHours,
        commercialPhone: data.commercialPhone,
        taxId: data.taxId,
        updatedAt: data.updatedAt,
        products: productsData,
        supplier: supplierData,
        address: addressData,
      },
      include: {
        products: true,
        supplier: true,
        address: true,
      },
    });

    return new ReturnFullItensEstablishmentDto(establishment);
  }

  async update(
    data: UpdateFullItensEstablishmentInput,
  ): Promise<ReturnFullItensEstablishmentDto> {
    await this.checkExistsEstablishmentById(data.id);

    if (data.products) {
      await Promise.all(
        data.products.map((product) =>
          this.prismaService.product.update({
            where: { id: product.id },
            data: { establishmentId: data.id },
          }),
        ),
      );
    }

    if (data.supplier) {
      await Promise.all(
        data.supplier.map((supplier) =>
          this.prismaService.supplier.update({
            where: { id: supplier.id },
            data: {
              establishmentId: data.id,
            },
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
        updatedAt: data.updatedAt,
      },
      include: {
        products: true,
        supplier: true,
        address: true,
      },
    });

    return new ReturnFullItensEstablishmentDto(establishment);
  }

  async updatePartial(
    data: UpdatePartialEstablishmentInput,
  ): Promise<ReturnFullItensEstablishmentDto> {
    await this.checkExistsEstablishmentById(data.id);

    const establishment = await this.prismaService.establishment.update({
      where: { id: data.id },
      data: {
        name: data.name,
        openingHours: data.openingHours,
        closingHours: data.closingHours,
        commercialPhone: data.commercialPhone,
        taxId: data.taxId,
        updatedAt: data.updatedAt,
      },
      include: {
        products: true,
        supplier: true,
        address: true,
      },
    });

    return new ReturnFullItensEstablishmentDto(establishment);
  }

  async updateProducts(
    data: UpdatePartialProductsEstablishmentInput,
  ): Promise<ReturnPartialProductsFromEstablishmentDto> {
    await this.checkExistsEstablishmentById(data.id);

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
            establishment: {
              connect: { id: data.id },
            },
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
  ): Promise<ReturnPartialAddressFromEstablishmentDto> {
    await this.checkExistsEstablishmentById(data.id);

    const establishment = await this.prismaService.establishment.update({
      where: { id: data.id },
      data: {
        address: {
          update: {
            street: data.street,
            number: data.number,
            complement: data.complement,
            neighbourhood: data.neighbourhood,
            zipCode: data.zipCode,
            city: data.city,
            state: data.state,
          },
        },
      },
      include: {
        address: true,
      },
    });

    return new ReturnPartialAddressFromEstablishmentDto(establishment);
  }

  async delete(id: string): Promise<void> {
    await this.checkExistsEstablishmentById(id);

    const { addressId } = await this.prismaService.establishment.findUnique({
      where: { id },
      select: {
        addressId: true,
      },
    });

    await this.prismaService.establishment.delete({
      where: { id },
    });

    const linkedEstablishments = await this.prismaService.establishment.count({
      where: { addressId: addressId },
    });

    const linkedUsers = await this.prismaService.user.count({
      where: { addressId: addressId },
    });

    if (linkedUsers === 0 && linkedEstablishments === 0) {
      await this.prismaService.address.delete({
        where: { id: addressId },
      });
    }
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

  async findById(id: string): Promise<ReturnFullItensEstablishmentDto> {
    await this.checkExistsEstablishmentById(id);
    const establishment = await this.prismaService.establishment.findUnique({
      where: { id },
      include: {
        address: true,
        products: true,
        supplier: true,
        _count: true,
      },
    });

    return new ReturnFullItensEstablishmentDto(establishment);
  }

  async findAll(): Promise<ReturnFullItensEstablishmentDto[]> {
    const establishments = await this.prismaService.establishment.findMany({
      include: {
        address: true,
        products: true,
        supplier: true,
        _count: true,
      },
    });

    return establishments.map(
      (establishment) => new ReturnFullItensEstablishmentDto(establishment),
    );
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

  async existsEstablismentById(id: string): Promise<boolean> {
    const exists = await this.prismaService.establishment.findUnique({
      where: { id },
      select: { id: true },
    });

    return exists !== null;
  }
}
