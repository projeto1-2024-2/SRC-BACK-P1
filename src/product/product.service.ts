import { HttpException, HttpStatus, Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { CreateProductInput } from './dto/create-product.input';
import { ProductEntity } from './entities/product.entity';
import { UpdateProductInput } from './dto/update-product.input';
import { StatusEnum } from 'src/shared/prismagraphql/prisma';

@Injectable()
export class ProductService {
  constructor(private readonly prismaService: PrismaService) {}

  private mapToProductEntity(product: any): ProductEntity {
    // eslint-disable-next-line @typescript-eslint/no-unsafe-return
    return {
      ...product,
      // eslint-disable-next-line @typescript-eslint/no-unsafe-member-access
      status: StatusEnum[product.status as keyof typeof StatusEnum],
    };
  }

  async create(data: CreateProductInput): Promise<ProductEntity> {
    const product = await this.prismaService.product.create({ data });

    return {
      ...product,
      status: StatusEnum[product.status as keyof typeof StatusEnum],
    };
  }

  async findAll(): Promise<ProductEntity[]> {
    const products = await this.prismaService.product.findMany();

    return products.map((product) => ({
      ...product,
      status: StatusEnum[product.status as keyof typeof StatusEnum],
    }));
  }

  async findByEstablishment(establishmentId: string): Promise<ProductEntity[]> {
    const products = await this.prismaService.product.findMany({
      where: { establishmentId },
    });

    return products.map((product) => ({
      ...product,
      status: StatusEnum[product.status as keyof typeof StatusEnum],
    }));
  }

  async findByCategory(category: string): Promise<ProductEntity[]> {
    const products = await this.prismaService.product.findMany({
      where: { category },
    });

    return products.map((product) => ({
      ...product,
      status: StatusEnum[product.status as keyof typeof StatusEnum],
    }));
  }

  async update(data: UpdateProductInput): Promise<ProductEntity> {
    try {
      const product = await this.prismaService.product.update({
        where: { id: data.id },
        data: data,
      });
      return this.mapToProductEntity(product);
    } catch (error) {
      console.log(error);
      throw new HttpException(
        `Product with id:${data.id} does not exists`,
        HttpStatus.NOT_FOUND,
      );
    }
  }

  async delete(idProduct: string): Promise<ProductEntity> {
    try {
      const product = await this.prismaService.product.delete({
        where: { id: idProduct },
      });

      return this.mapToProductEntity(product);
    } catch (error) {
      console.log(error);
      throw new HttpException(
        `Product with id:${idProduct} does not exists`,
        HttpStatus.NOT_FOUND,
      );
    }
  }
}
