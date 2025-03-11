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
import { UserEntity } from 'src/user/entities/user.entity';
import { SearchService } from 'src/search/search.service';

@Injectable()
export class ProductService {
  constructor(
    private readonly prismaService: PrismaService,
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
    await this.establishmentService.checkExistsEstablishmentById(
      data.establishmentId,
    );
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

  async create(
    data: CreateProductInput,
    user: UserEntity,
  ): Promise<ProductEntity> {
    await this.checkExistsEstablishmentById(data.establishmentId);
    await this.checkRelationSupplierEstablishment(data.establishmentId, user);

    const product = await this.prismaService.product.create({ data });

    return {
      ...product,
      last_update: new Date(),
      created_on: new Date(),
      is_deleted: false,
      status: StatusEnum[product.status as keyof typeof StatusEnum],
    };
  }

  async findAll(
    pagination: PaginationInput,
    establishmentId: string,
  ): Promise<PaginatedProducts> {
    const { take, skip, cursor } = pagination;
    user?: UserEntity,
  ): Promise<ProductEntity[]> {
    await this.checkExistsEstablishmentById(establishmentId);

    if (user) {
      await this.checkRelationSupplierEstablishment(establishmentId, user);
    }

    if (!data || !data.length) {
      throw new HttpException(
        `Nenhum produto informado para atualização no estabelecimento ${establishmentId}.`,
        HttpStatus.NOT_FOUND,
      );
    }
    await this.prismaService.product.createMany({
      data: data.map((product) => ({
        ...product,
        establishmentId: establishmentId,
      })),
      skipDuplicates: true,
    });

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
  async updateMany(
    data: UpdateProductInput[],
    establishmentId: string,
    user?: UserEntity,
  ) {
    await this.checkExistsEstablishmentById(establishmentId);

    if (user) {
      await this.checkRelationSupplierEstablishment(establishmentId, user);
    }

    if (!data || !data.length) {
      throw new HttpException(
        `Nenhum produto informado para atualização no estabelecimento ${establishmentId}.`,
        HttpStatus.NOT_FOUND,
      );
    }

    return this.prismaService.$transaction(async (prisma) => {
      const productIds = data.map((p) => p.id);
      const existingProducts = await prisma.product.findMany({
        where: {
          id: { in: productIds },
          establishmentId: establishmentId,
        },
      });

      const existingProductIds = new Set(existingProducts.map((p) => p.id));

      const validUpdates = data.filter((p) => existingProductIds.has(p.id));

      if (!validUpdates.length) {
        throw new HttpException(
          `Nenhum produto encontrado para atualização no estabelecimento ${establishmentId}.`,
          HttpStatus.NOT_FOUND,
        );
      }

      await Promise.all(
        validUpdates.map((product) =>
          prisma.product.update({
            where: { id: product.id },
            data: {
              title: product.title,
              description: product.description,
              brand: product.brand,
              isAvaliable: product.isAvaliable,
              quantity: product.quantity,
              category: product.category,
              status: product.status,
              price: product.price,
              imagens: product.imagens,
            },
          }),
        ),
      );

      return validUpdates.length;
    });
  }

  async deleteMany(
    deleteProducts: string[],
    establishmentId: string,
    user?: UserEntity,
  ) {
    await this.checkExistsEstablishmentById(establishmentId);

    if (user) {
      await this.checkRelationSupplierEstablishment(establishmentId, user);
    }

    if (!deleteProducts || !deleteProducts.length) {
      throw new HttpException(
        `Nenhum produto informado para exclusão no estabelecimento ${establishmentId}.`,
        HttpStatus.NOT_FOUND,
      );
    }
    try {
      const products = await this.prismaService.product.findMany({
        where: {
          id: { in: deleteProducts },
          establishmentId: establishmentId,
        },
      });

      if (products.length === 0) {
        throw new HttpException(
          'No products found for this establishment or invalid product IDs.',
          HttpStatus.NOT_FOUND,
        );
      }

      await this.prismaService.product.deleteMany({
        where: {
          id: { in: deleteProducts },
          establishmentId: establishmentId,
        },
      });

      return true;
    } catch (error) {
      if (error instanceof HttpException) {
        throw error;
      }
      return false;
    }
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

  async update(
    data: UpdateProductInput,
    user: UserEntity,
  ): Promise<ProductEntity> {
    await this.checkExistsEstablishmentById(data.establishmentId);
    await this.checkRelationSupplierEstablishment(data.establishmentId, user);
    try {
      await this.checkProductExists(data.id);
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
    } catch {
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
  async delete(idProduct: string, user: UserEntity): Promise<ProductEntity> {
    try {
      const product = await this.prismaService.product.findUnique({
        where: { id: idProduct },
      });

      await this.checkExistsEstablishmentById(product.establishmentId);
      await this.checkRelationSupplierEstablishment(
        product.establishmentId,
        user,
      );

      await this.prismaService.product.delete({
        where: { id: idProduct },
      });
      await this.searchService.deleteProduct(idProduct);

      return this.mapToProductEntity(product);
    } catch {
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

  private async checkRelationSupplierEstablishment(
    establishmentId: string,
    user: UserEntity,
  ) {
    if (user.role !== 'ADMIN') {
      const establishmentEntity =
        await this.prismaService.establishment.findUnique({
          where: { id: establishmentId },
          include: {
            suppliers: {
              select: { supplierId: true },
            },
          },
        });

      const supplier = await this.prismaService.supplier.findUnique({
        where: { userId: user.id },
      });

      const exists = establishmentEntity.suppliers.some(
        (s) => s.supplierId === supplier.id,
      );

      if (!exists) {
        throw new HttpException(
          'You cannot be a supplier of your own establishment',
          HttpStatus.UNAUTHORIZED,
        );
      }
    }
  }
}
