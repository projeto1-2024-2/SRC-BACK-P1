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
import { PaginationInput } from 'src/pagination/pagination.input';
import { PaginatedProducts } from './dto/paginated-products.input';
import { EstablishmentService } from 'src/establishment/establishment.service';

@Injectable()
export class ProductService {
  constructor(
    private readonly prismaService: PrismaService,
    @Inject(forwardRef(() => EstablishmentService))
    private readonly establishmentService: EstablishmentService,
  ) {}

  async create(data: CreateProductInput): Promise<ProductEntity> {
    if (data.keywords.length == 0) {
      data.keywords = this.createKeywordsByTitleDescription(
        data.title,
        data.description,
      );
    }
    await this.checkProductExistsByTitleDescription(
      data.title,
      data.description,
    );
    await this.establishmentService.checkEstablishmentByid(
      data.establishmentId,
    );
    const product = await this.prismaService.product.create({ data });

    return {
      ...product,
      status: StatusEnum[product.status as keyof typeof StatusEnum],
    };
  }

  async findById(productId: string): Promise<ProductEntity> {
    await this.checkProductExists(productId);
    const product = await this.prismaService.product.findUnique({
      where: { id: productId },
    });

    return {
      ...product,
      status: StatusEnum[product.status as keyof typeof StatusEnum],
    };
  }

  async findAll(
    pagination: PaginationInput,
    establishmentId: string,
  ): Promise<PaginatedProducts> {
    const { take, skip, cursor } = pagination;
    const products = await this.prismaService.product.findMany({
      take: take + 1,
      skip: skip || 0,
      cursor: cursor ? { id: cursor } : undefined,
      where: { establishmentId },
    });

    const hasMore = products.length > take;

    return {
      products: products.slice(0, take),
      hasMore,
    };
  }

  async findByCategory(
    pagination: PaginationInput,
    category: string,
    establishmentId: string,
  ): Promise<PaginatedProducts> {
    const { take, skip, cursor } = pagination;
    const products = await this.prismaService.product.findMany({
      take: take + 1,
      skip: skip || 0,
      cursor: cursor ? { id: cursor } : undefined,
      where: { establishmentId, category },
    });

    const hasMore = products.length > take;

    return {
      products: products.slice(0, take),
      hasMore,
    };
  }

  async update(data: UpdateProductInput): Promise<ProductEntity> {
    try {
      await this.checkProductExists(data.id);
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

  async delete(idProduct: string): Promise<string> {
    try {
      await this.checkProductExists(idProduct);
      await this.prismaService.product.delete({
        where: { id: idProduct },
      });

      return idProduct;
    } catch (error) {
      console.log(error);
      throw new HttpException(
        `Product with id:${idProduct} does not exists`,
        HttpStatus.NOT_FOUND,
      );
    }
  }

  private async checkProductExistsByTitleDescription(
    title: string,
    description: string,
  ) {
    const existingProduct = await this.prismaService.product.findFirst({
      where: { title: title, description: description },
    });
    if (existingProduct) {
      throw new HttpException('Product already exits', HttpStatus.CONFLICT);
    }
  }
  private async checkProductExists(id: string) {
    const existingProduct = await this.prismaService.product.findUnique({
      where: { id },
    });
    if (existingProduct) {
      throw new HttpException('Product already exits', HttpStatus.CONFLICT);
    }
  }

  private mapToProductEntity(product: any): ProductEntity {
    return {
      ...product,
      status: StatusEnum[product.status as keyof typeof StatusEnum],
    };
  }

  private createKeywordsByTitleDescription(title: string, description: string) {
    const keywords: string[] = [];
    const titleSplitted = title.split(' ');
    const descriptionSplitted = description.split(' ');
    titleSplitted.map((i) => {
      keywords.push(i);
    });
    descriptionSplitted.map((i) => {
      keywords.push(i);
    });
    return keywords;
  }
}
