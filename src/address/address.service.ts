import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { AddressEntity } from './entities/address.entity';
import { UserEntity } from '../user/entities/user.entity';
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
    const address = await this.prismaService.address.update({
      where: { id: user.addressId },
      data: data,
    });

    this.validateAddress(address);
    return address;
  }

  async get(data: UserEntity): Promise<AddressEntity> {
    const address = await this.prismaService.address.findUnique({
      where: { id: data.addressId },
    });

    this.validateAddress(address);
    return address;
  }

  private validateAddress(address: AddressEntity): void {
    if (!address) {
      throw new HttpException('Address not found', HttpStatus.NOT_FOUND);
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
