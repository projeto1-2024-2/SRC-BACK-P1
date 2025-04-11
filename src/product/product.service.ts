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
import { StatusEnum } from 'src/shared/prismagraphql/prisma/status.enum';
import { PaginationInput } from 'src/pagination/pagination.input';
import { PaginatedProducts } from './dto/paginated-products.input';
import { EstablishmentService } from 'src/establishment/establishment.service';
import { SearchService } from 'src/search/search.service';
import { FileUpload } from 'graphql-upload-ts';
import { uploadFileStream } from 'src/utils/uploadFileStream';
import { downloadFileStream } from 'src/utils/downloadFileStream';
import { product as ProductPrisma } from 'src/shared/prismagraphql/product';

@Injectable()
export class ProductService {
  constructor(
    private readonly prismaService: PrismaService,
    @Inject(forwardRef(() => EstablishmentService))
    private readonly establishmentService: EstablishmentService,
    private readonly searchService: SearchService,
  ) {}

  async create(establishmentId: string, data: CreateProductInput) {
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
    await this.establishmentService.checkEstablishmentByid(establishmentId);
    const product = await this.prismaService.product.create({
      data: {
        title: data.title,
        description: data.description,
        brand: data.brand,
        quantity: data.quantity,
        category: data.category,
        price: data.price,
        keywords: data.keywords,
        status: data.status,
        establishment: {
          connect: { id: establishmentId },
        },
      },
    });
    return {
      ...product,
      created_at: new Date(),
      updated_at: new Date(),
      is_deleted: false,
      status: StatusEnum[product.status as keyof typeof StatusEnum],
    };
  }

  async createByAdmin(data: CreateProductInput): Promise<ProductEntity> {
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
      created_at: new Date(),
      updated_at: new Date(),
      is_deleted: false,
      status: StatusEnum[product.status as keyof typeof StatusEnum],
    };
  }

  async findAll(
    pagination: PaginationInput,
    establishmentid: string,
  ): Promise<PaginatedProducts> {
    const { take = 10, skip = 0, cursor } = pagination;
    const products = await this.prismaService.product.findMany({
      take: take + 1,
      skip: skip || 0,
      cursor: cursor ? { id: cursor } : undefined,
      where: { establishmentid },
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
    establishmentid: string,
  ): Promise<PaginatedProducts> {
    const { take, skip, cursor } = pagination;
    const products = await this.prismaService.product.findMany({
      take: take + 1,
      skip: skip || 0,
      cursor: cursor ? { id: cursor } : undefined,
      where: { establishmentid, category },
    });

    const hasMore = products.length > take;

    return {
      products: products.slice(0, take),
      hasMore,
    };
  }

  async findById(productId: string): Promise<ProductEntity | null> {
    try {
      const product = await this.prismaService.product.findFirst({
        where: {
          id: productId,
        },
      });
      if (!product) {
        throw new HttpException(
          `Product with id:${productId} does not exists`,
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

  async update(
    data: UpdateProductInput,
    establishmentId: string,
  ): Promise<ProductEntity> {
    await this.establishmentService.checkEstablishmentByid(establishmentId);
    try {
      const product = await this.prismaService.product.update({
        where: { id: data.id },
        data: data,
      });
      await this.searchService.updateDocumentByQuery(
        data.id,
        data.title,
        data.description,
        data.brand,
        data.keywords,
      );
      return this.mapToProductEntity(product);
    } catch {
      throw new HttpException(
        `Product with id:${data.id} does not exists`,
        HttpStatus.NOT_FOUND,
      );
    }
  }

  async delete(productId: string): Promise<string> {
    try {
      await this.prismaService.product.delete({
        where: { id: productId },
      });
      return productId;
    } catch (error) {
      console.log(error);
      throw new HttpException(
        `Product with id:${productId} does not exists`,
        HttpStatus.NOT_FOUND,
      );
    }
  }

  async searchFindById(productId: string): Promise<ProductEntity> {
    try {
      const product = await this.prismaService.product.findUnique({
        where: {
          id: productId,
        },
      });
      if (!product) {
        throw new HttpException(
          `Product with id:${productId} does not exists`,
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

  async uploadImagesProduct(
    establishmentId: string,
    productId: string,
    files: Promise<FileUpload>,
  ): Promise<string> {
    const existingProduct = await this.prismaService.product.findFirst({
      where: {
        id: productId,
      },
    });
    if (!existingProduct) {
      throw new HttpException('Product not found', HttpStatus.NOT_FOUND);
    }
    await this.establishmentService.checkEstablishmentByid(
      existingProduct.establishmentid,
    );

    return await uploadFileStream(
      existingProduct.establishmentid,
      productId,
      files,
    );
  }

  async downloadImages(
    productId: string,
  ): Promise<{ name: string; image: string }[]> {
    const product = await this.prismaService.product.findFirst({
      where: {
        id: productId,
      },
    });
    if (!product) {
      throw new HttpException('Product not found', HttpStatus.NOT_FOUND);
    }
    const establishmentId = product.establishmentid;
    console.log(establishmentId)
    await this.establishmentService.checkEstablishmentByid(establishmentId);
    return downloadFileStream(establishmentId, productId);
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
  private async checkProductExists(productId: string) {
    const existingProduct = await this.prismaService.product.findFirst({
      where: {
        id: productId,
      },
    });
    if (existingProduct) {
      throw new HttpException('Product already exits', HttpStatus.CONFLICT);
    }
  }

  private mapToProductEntity(product: ProductPrisma): ProductEntity {
    return {
      ...product,
      status: StatusEnum[product.status],
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
