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
    if (data.keywords.length == 0) {
      data.keywords = this.createKeywordsByTitleDescription(
        data.title,
        data.description,
      );
    }
    await this.checkExistsEstablishmentById(data.establishmentId);
    const product = await this.prismaService.product.create({ data });

    return {
      ...product,
      status: StatusEnum[product.status as keyof typeof StatusEnum],
    };
  }

  async createMany(
    data: CreateProductInput[],
    establishmentId: string,
  ): Promise<ProductEntity[]> {
    await this.checkExistsEstablishmentById(establishmentId);

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
      where: { establishmentId },
    });

    return products.map((product) => this.mapToProductEntity(product));
  }

  async updateMany(
    updateProducts: UpdateProductInput[],
    establishmentId: string,
  ) {
    await this.checkExistsEstablishmentById(establishmentId);
    if (!updateProducts || updateProducts?.length) {
      throw new HttpException(
        `Nenhum produto informado para atualização no estabelecimento ${establishmentId}.`,
        HttpStatus.NOT_FOUND,
      );
    }

    return this.prismaService.$transaction(async (prisma) => {
      const productIds = updateProducts.map((p) => p.id);
      const existingProducts = await prisma.product.findMany({
        where: {
          id: { in: productIds },
          establishmentId: establishmentId,
        },
      });

      const existingProductIds = new Set(existingProducts.map((p) => p.id));

      const validUpdates = updateProducts.filter((p) =>
        existingProductIds.has(p.id),
      );

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

  async deleteMany(deleteProducts: string[], establishmentId: string) {
    await this.checkExistsEstablishmentById(establishmentId);
    if (!deleteProducts || deleteProducts?.length < 1) {
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

  private async checkExistsEstablishmentById(establishmentId: string) {
    const exists = await this.prismaService.establishment.findUnique({
      where: { id: establishmentId },
    });
    if (!exists) {
      throw new HttpException(
        `Estabelecimento com id:${establishmentId} não encontrado`,
        HttpStatus.NOT_FOUND,
      );
    }
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
