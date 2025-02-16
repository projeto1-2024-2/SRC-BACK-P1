import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { CreateEstablishmentInput } from '../establishment/dto/create-establishment.input';
import { PrismaService } from 'src/prisma/prisma.service';
import { EstablishmentEntity } from './entities/establishment.entity';
import { UpdateEstablishmentInput } from '../establishment/dto/update-establishment.input';
import { Product } from '@prisma/client';
import { ReturnEstablishmentDto } from '../establishment/dto/return-establishment-dto';

@Injectable()
export class EstablishmentService {
  constructor(private readonly prismaService: PrismaService) {}

  async create(
    data: CreateEstablishmentInput,
  ): Promise<ReturnEstablishmentDto> {
    const establishment = await this.prismaService.establishment.create({
      data: {
        name: data.name,
        operatingHours: data.operatingHours,
        commercialPhone: data.commercialPhone,
        taxId: data.taxId,
        address: {
          connectOrCreate: {
            where: { id: data.address.id ?? '' },
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
        },
      },
    });

    return new ReturnEstablishmentDto(establishment);
  }

  async update(data: UpdateEstablishmentInput): Promise<EstablishmentEntity> {
    await this.checkExistsEstablishment(data.id);

    const establishment = await this.prismaService.establishment.update({
      where: { id: data.id },
      data: {
        name: data.name,
        operatingHours: data.operatingHours,
        commercialPhone: data.commercialPhone,
        taxId: data.taxId,
        updatedAt: new Date(),
        address: data.address
          ? {
              update: {
                street: data.address.street,
                number: data.address.number,
                complement: data.address.complement,
                neighbourhood: data.address.neighbourhood,
                zipCode: data.address.zipCode,
                city: data.address.city,
                state: data.address.state,
              },
            }
          : undefined,
      },
    });

    return establishment;
  }

  async delete(id: string): Promise<void> {
    await this.checkExistsEstablishment(id);

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

  //   async findById(id: string): Promise<EstablishmentEntity> {
  //     await this.checkExistsEstablishment(id);

  //     const establishment = await this.prismaService.establishment.findUnique({
  //       where: { id },
  //       include: {
  //         address: true,
  //         products: true,
  //       },
  //     });

  //     return establishment;
  //   }

  //   async findAll(): Promise<EstablishmentEntity[]> {
  //     return this.prismaService.establishment.findMany({
  //       include: {
  //         address: true,
  //         products: true,
  //       },
  //     });
  //   }

  async findProductsByEstablishment(id: string): Promise<Product[]> {
    await this.checkExistsEstablishment(id);

    const establishment = await this.prismaService.establishment.findUnique({
      where: { id },
      include: { products: true },
    });

    return establishment.products || [];
  }

  private async checkExistsEstablishment(id: string): Promise<void> {
    const establishment = await this.prismaService.establishment.findUnique({
      where: { id },
      select: { id: true },
    });

    if (!establishment) {
      throw new HttpException(
        `Establishment with id:${id} does not exist`,
        HttpStatus.NOT_FOUND,
      );
    }
  }
}
