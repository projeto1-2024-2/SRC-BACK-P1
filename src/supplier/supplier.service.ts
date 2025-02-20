import { Injectable, HttpException, HttpStatus } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { CreateSupplierInput } from './dto/create-supplier.dto';
import { Role } from 'src/shared/prismagraphql/prisma';
import { UserService } from 'src/user/user.service';
import { UserEntity } from 'src/user/entities/user.entity';
import { SupplierEntity } from './entities/supplier.entity';

@Injectable()
export class SupplierService {
  constructor(
    private prismaService: PrismaService,
    private userService: UserService,
  ) {}

  async create(data: CreateSupplierInput, user: UserEntity) {
    await this.checkExistsSupplier(user.id);

    const supplier = await this.prismaService.supplier.create({
      data: {
        userId: user.id,
        ...data,
      },
    });

    await this.prismaService.user.update({
      where: { id: user.id },
      data: { role: Role.SUPPLIER },
    });

    return supplier;
  }

  async findById(supplierId: string) {
    const supplier = await this.prismaService.supplier.findUnique({
      where: { id: supplierId },
      include: { user: true, establishments: true, products: true },
    });

    if (!supplier) {
      throw new HttpException('Supplier not found', HttpStatus.NOT_FOUND);
    }

    return supplier;
  }

  async findAll() {
    return this.prismaService.supplier.findMany({
      include: { user: true, establishments: true, products: true },
    });
  }

  async delete(user: UserEntity): Promise<boolean> {
    await this.prismaService.user.update({
      where: { id: user.id },
      data: { role: Role.CONSUMER },
    });

    await this.prismaService.supplier.delete({
      where: { userId: user.id },
    });
    return true;
  }

  async update(
    user: UserEntity,
    data: CreateSupplierInput,
  ): Promise<SupplierEntity> {
    return await this.prismaService.supplier.update({
      where: { userId: user.id },
      data: { ...data },
    });
  }

  async checkExistsSupplier(userId: string) {
    const exists = await this.existsSupplierByUserId(userId);

    if (exists) {
      throw new HttpException(
        'User already has a supplier',
        HttpStatus.CONFLICT,
      );
    }
  }

  async existsSupplierByUserId(userId: string): Promise<boolean> {
    return (
      (await this.prismaService.supplier.findUnique({
        where: { userId: userId },
      })) !== null
    );
  }
}
