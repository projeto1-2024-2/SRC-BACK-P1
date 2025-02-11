import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { CreateProductInput } from './dto/create-product.input';
import { ProductEntity } from './entities/product.entity';
import { UpdateProductInput } from './dto/update-product.input';
import { Prisma } from '@prisma/client';

@Injectable()
export class ProductService {
  constructor(private readonly prismaService: PrismaService) {}

  async create(data: CreateProductInput): Promise<ProductEntity> {
    return await this.prismaService.product.create({ data });
  }

  async findAll(): Promise<ProductEntity[]> {
    return await this.prismaService.product.findMany();
  }

  async findByEstablishment(establishmentId: string): Promise<ProductEntity[]> {
    return await this.prismaService.product.findMany({
      where: { establishmentId },
    });
  }

  async findByCategory(category: string): Promise<ProductEntity[]> {
    return await this.prismaService.product.findMany({
      where: { category },
    });
  }

  async update(
    idProduct: string,
    data: UpdateProductInput,
  ): Promise<ProductEntity> {
    const productExists = await this.prismaService.product.findUnique({
      where: { id: idProduct },
    });

    if (!productExists) {
      throw new HttpException('Product do not exists', HttpStatus.NOT_FOUND);
    }
    return await this.prismaService.product.update({
      where: { id: idProduct },
      data: data as Prisma.ProductUpdateInput,
    });
  }

  async delete(idProduct: string): Promise<ProductEntity> {
    const productExists = await this.prismaService.product.findUnique({
      where: { id: idProduct },
    });

    if (!productExists) {
      throw new HttpException(
        `Product with ID: ${idProduct} does not exist`,
        HttpStatus.NOT_FOUND,
      );
    }
    return await this.prismaService.product.delete({
      where: { id: idProduct },
    });
  }
}
