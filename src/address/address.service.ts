import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { AddressEntity } from './entities/address.entity';
import { UserEntity } from 'src/user/entities/user.entity';
import { CreateAddressInput } from './dto/create-address.input';
import { UpdateAddressInput } from './dto/update-address.input';

@Injectable()
export class AddressService {
  constructor(private readonly prismaService: PrismaService) {}

  async create(
    user: UserEntity,
    data: CreateAddressInput,
  ): Promise<AddressEntity> {
    const address = await this.prismaService.address.create({ data });

    await this.prismaService.user.update({
      where: { id: user.id },
      data: { addressId: address.id },
    });

    return address;
  }

  async update(
    user: UserEntity,
    data: UpdateAddressInput,
  ): Promise<AddressEntity> {
    try {
      const address = await this.prismaService.address.update({
        where: { id: user.addressId },
        data: data,
      });
      return address;
    } catch {
      throw new HttpException(
        `Address with id:${user.addressId} does not exists`,
        HttpStatus.NOT_FOUND,
      );
    }
  }

  async get(data: UserEntity): Promise<AddressEntity> {
    try {
      return await this.prismaService.address.findUnique({
        where: { id: data.addressId },
      });
    } catch {
      throw new HttpException(
        `Address with id:${data.addressId} does not exists`,
        HttpStatus.NOT_FOUND,
      );
    }
  }

  async getById(id: string): Promise<AddressEntity> {
    try {
      return await this.prismaService.address.findUnique({
        where: { id: id },
      });
    } catch {
      throw new HttpException(
        `Address with id:${id} does not exists`,
        HttpStatus.NOT_FOUND,
      );
    }
  }
}
