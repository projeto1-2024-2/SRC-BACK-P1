import {
  forwardRef,
  HttpException,
  HttpStatus,
  Inject,
  Injectable,
} from '@nestjs/common';
import { CreateEstablishmentInput } from './dto/create-establishment.input';
import { PrismaService } from 'src/prisma/prisma.service';
import { UpdateFullItensEstablishmentInput } from './dto/update-establishment.input';
import { EstablishmentEntity } from './entities/establishment.entity';
import { ProductService } from 'src/product/product.service';
import { PaginationInput } from 'src/pagination/pagination.input';
import { PaginatedEstablishment } from './dto/paginated-establishment.input';
import * as bcrypt from 'bcrypt';

@Injectable()
export class EstablishmentService {
  private saltRounds = 10;
  constructor(
    private readonly prismaService: PrismaService,
    @Inject(forwardRef(() => ProductService))
    private readonly productService: ProductService,
  ) {}

  async create(data: CreateEstablishmentInput): Promise<EstablishmentEntity> {
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
        password: await bcrypt.hash(data.password, this.saltRounds),
      },
    });

    return await this.prismaService.establishment.findUnique({
      where: { id: establishment.id },
      include: {
        address: true,
        products: true,
      },
    });
  }

  async update(
    data: UpdateFullItensEstablishmentInput,
  ): Promise<EstablishmentEntity> {
    await this.checkEstablishmentByid(data.id);

    return this.prismaService.$transaction(async (prisma) => {
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

  async findById(id: string): Promise<EstablishmentEntity> {
    await this.checkEstablishmentByid(id);
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

  async findAll(pagination: PaginationInput): Promise<PaginatedEstablishment> {
    const { take, skip, cursor } = pagination;
    const establishments = await this.prismaService.establishment.findMany({
      take: take + 1,
      skip: skip || 0,
      cursor: cursor ? { id: cursor } : undefined,
      include: {
        address: true,
        products: true,
        _count: true,
      },
    });

    const hasMore = establishments.length > take;

    return {
      establishments: establishments.slice(0, take),
      hasMore,
    };
  }

  async delete(id: string): Promise<string> {
    await this.checkEstablishmentByid(id);

    await this.prismaService.establishment.delete({
      where: { id },
    });
    return id;
  }

  async getByTaxId(taxId: string): Promise<EstablishmentEntity> {
    await this.checkEstablishmentByTaxId(taxId);
    return this.prismaService.establishment.findFirst({
      where: { taxId },
    });
  }

  async checkEstablishmentByid(id: string) {
    const existingEstablishment =
      await this.prismaService.establishment.findUnique({
        where: { id },
      });

    if (!existingEstablishment) {
      throw new HttpException(
        `Establishment with id:${id} does not exist`,
        HttpStatus.NOT_FOUND,
      );
    } else {
      return true;
    }
  }

  async checkEstablishmentByTaxId(taxId: string) {
    const existingEstablishment =
      await this.prismaService.establishment.findFirst({
        where: { taxId },
      });

    if (!existingEstablishment) {
      throw new HttpException(
        `Establishment with taxId:${taxId} does not exist`,
        HttpStatus.NOT_FOUND,
      );
    } else {
      return true;
    }
  }
}
