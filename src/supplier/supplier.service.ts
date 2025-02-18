import { Injectable, HttpException, HttpStatus } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { CreateSupplierInput } from './dto/create-supplier.dto';
import { Role } from 'src/shared/prismagraphql/prisma';

@Injectable()
export class SupplierService {
  constructor(private prismaService: PrismaService) {}

  async create(createSupplierDto: CreateSupplierInput, userId: string) {
    const user = await this.prismaService.user.findUnique({
      where: { id: createSupplierDto.userId },
    });

    if (!user) {
      throw new HttpException('User not found', HttpStatus.NOT_FOUND);
    }

    if (userId !== createSupplierDto.userId) {
      throw new HttpException('User not found', HttpStatus.UNAUTHORIZED);
    }

    const supplier = await this.prismaService.supplier.create({
      data: createSupplierDto,
    });

    await this.prismaService.user.update({
      where: { id: createSupplierDto.userId },
      data: { role: Role.SUPPLIER },
    });

    console.log(supplier, 'man');

    return supplier;
  }
}
