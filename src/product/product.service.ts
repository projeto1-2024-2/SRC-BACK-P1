import {
  forwardRef,
  HttpException,
  HttpStatus,
  Inject,
  Injectable,
} from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';
import { CreateProductInput } from './dto/create-product.input';
import { ProductEntity } from './entities/product.entity';
import { UpdateProductInput } from './dto/update-product.input';
import { StatusEnum } from 'src/shared/prismagraphql/prisma';
import { SearchService } from 'src/search/search.service';

@Injectable()
export class ProductService {
  constructor(
    private readonly prismaService: PrismaService,
    @Inject(forwardRef(() => SearchService))
    private readonly searchService: SearchService,
  ) {}

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
      last_update: new Date(),
      created_on: new Date(),
      is_deleted: false,
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

  async findById(id: string): Promise<ProductEntity | null> {
    try {
      const product = await this.prismaService.product.findUnique({
        where: { id: id },
      });
      if (!product) {
        throw new HttpException(
          `Product with id:${id} does not exists`,
          HttpStatus.NOT_FOUND,
        );
      }
      return {
        ...product,
        status: StatusEnum[product.status as keyof typeof StatusEnum],
      };
    } catch (error) {
      console.log(error);
      throw new Error('Failed to fetch product');
    }
  }

  async update(data: UpdateProductInput): Promise<ProductEntity> {
    try {
      const product = await this.prismaService.product.update({
        where: { id: data.id },
        data: data,
      });
      await this.searchService.updateDocumentByQuery(
        data.id,
        data.title,
        data.brand,
        data.description,
      );
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
      await this.searchService.deleteProduct(idProduct);

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
