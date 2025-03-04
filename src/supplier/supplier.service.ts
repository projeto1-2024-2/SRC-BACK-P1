import { Injectable, HttpException, HttpStatus } from '@nestjs/common';
import { PrismaService } from '../prisma/prisma.service';
import { CreateSupplierInput } from './dto/create-supplier.dto';
import { Role } from 'src/shared/prismagraphql/prisma';
import { UserService } from 'src/user/user.service';

@Injectable()
export class SupplierService {
  constructor(
    private prismaService: PrismaService,
    private userService: UserService,
  ) {}

  async create(data: CreateSupplierInput) {
    await this.checkExistsUser(data.userId);

    this.validatePermission(data.userId, data.userId);

    await this.checkExistsSupplier(data.userId);

    const supplier = await this.prismaService.supplier.create({
      data: {
        ...data,
      },
    });

    await this.prismaService.user.update({
      where: { id: data.userId },
      data: { role: Role.SUPPLIER },
    });

    return supplier;
  }

  async delete(supplierId: string) {
    await this.prismaService.supplier.delete({
      where: { id: supplierId },
    });

    const establishments = await this.prismaService.establishment.findMany({
      where: {
        suppliers: { none: {} },
      },
    });

    await this.prismaService.establishment.deleteMany({
      where: {
        id: { in: establishments.map((e) => e.id) },
      },
    });

    return true;
  }

  private async checkExistsUser(userId: string) {
    const exists = await this.userService.existsById(userId);

    if (!exists) {
      throw new HttpException('User not found', HttpStatus.NOT_FOUND);
    }
  }

  private validatePermission(userId: string, dataUserId: string) {
    if (userId !== dataUserId) {
      throw new HttpException('Unauthorized', HttpStatus.UNAUTHORIZED);
    }
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
