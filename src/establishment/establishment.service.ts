import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { CreateEstablishmentInput } from './dto/input/create_full_itens-establishment.input';
import { PrismaService } from 'src/prisma/prisma.service';
import { UpdateFullItensEstablishmentInput } from './dto/input/update_full_itens-establishment.input';
import { EstablishmentEntity } from './entities/establishment.entity';

@Injectable()
export class EstablishmentService {
  constructor(private readonly prismaService: PrismaService) {}

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
      },
    });

    return await this.prismaService.establishment.findUnique({
      where: { id: establishment.id },
      include: {
        address: true,
      },
    });
  }

  async update(
    data: UpdateFullItensEstablishmentInput,
  ): Promise<EstablishmentEntity> {
    await this.checkEstablishmentById(data.id);

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

  async delete(id: string): Promise<boolean> {
    await this.checkEstablishmentById(id);

    await this.prismaService.establishment.delete({
      where: { id },
    });
    return true;
  }

  async findById(id: string): Promise<EstablishmentEntity> {
    await this.checkEstablishmentById(id);
    const establishment = await this.prismaService.establishment.findUnique({
      where: { id },
    });

    return establishment;
  }

  async findAll(): Promise<EstablishmentEntity[]> {
    const establishments = await this.prismaService.establishment.findMany({
      include: {
        address: true,
        _count: true,
      },
    });

    return establishments;
  }

  async checkEstablishmentById(id: string) {
    const exists = await this.prismaService.establishment.findUnique({
      where: { id },
    });

    if (!exists) {
      throw new HttpException(
        `Establishment with id:${id} does not exist`,
        HttpStatus.NOT_FOUND,
      );
    } else {
      return true;
    }
  }
}
