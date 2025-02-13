import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { AddressEntity } from './entities/address.entity';
import { UserEntity } from 'src/user/entities/user.entity';
import { CreateAddressInput } from './dto/create-address.input';
import { UpdateAddressInput } from './dto/update-address.input';

@Injectable()
export class AddressService {
  constructor(private readonly prismaService: PrismaService) {}

  async create(data: CreateAddressInput): Promise<AddressEntity> {
    return await this.prismaService.address.create({ data });
  }

  async update(data: UpdateAddressInput): Promise<AddressEntity> {
    try {
      const address = await this.prismaService.address.update({
        where: { id: data.id },
        data: data,
      });
      return address;
    } catch (error) {
      console.log(error);
      throw new HttpException(
        `Address with id:${data.id} does not exists`,
        HttpStatus.NOT_FOUND,
      );
    }
  }

  async get(data: UserEntity): Promise<AddressEntity> {
    try {
      return await this.prismaService.address.findUnique({
        where: { id: data.addressId },
      });
    } catch (error) {
      console.log(error);
      throw new HttpException(
        `Address with id:${data.addressId} does not exists`,
        HttpStatus.NOT_FOUND,
      );
    }
  }
}
