import { Args, Mutation, Query, Resolver } from '@nestjs/graphql';
import { ProductService } from './product.service';
import { ProductEntity } from './entities/product.entity';
import { CreateProductInput } from './dto/create-product.input';
import { UpdateProductInput } from './dto/update-product.input';
import { UseGuards } from '@nestjs/common';
import { Roles } from 'src/user/decorators';
import { JwtAuthGuard } from 'src/auth/guards/jwt-auth.guard';
import { PaginatedProducts } from './dto/paginated-products.input';
import { PaginationInput } from 'src/pagination/pagination.input';
import { CurrentUser } from 'src/auth/decorators/current-user.decorator';
import { EstablishmentEntity } from 'src/establishment/entities/establishment.entity';
import { UploadImageProductInput } from './dto/upload-image-product.input';
import { DownloadImage } from 'src/shared/models/downloadImage.dto';

@UseGuards(JwtAuthGuard)
@Resolver(() => ProductEntity)
export class ProductResolver {
  constructor(private readonly productService: ProductService) {}

  @Roles('SUPPLIER')
  @Mutation(() => ProductEntity, { name: 'createProduct' })
  async createProduct(
    @Args('data') data: CreateProductInput,
    @CurrentUser() establishment: EstablishmentEntity,
  ): Promise<ProductEntity> {
    return this.productService.create(establishment.id, data);
  }

  @Roles('ADMIN')
  @Mutation(() => ProductEntity, { name: 'createProductByAdmin' })
  async createProductByAdmin(
    @Args('data') data: CreateProductInput,
  ): Promise<ProductEntity> {
    return this.productService.createByAdmin(data);
  }

  @Roles('SUPPLIER', 'ADMIN')
  @Query(() => PaginatedProducts, { name: 'getProducts' })
  async findAll(
    @Args('pagination', { nullable: true }) pagination: PaginationInput,
    @CurrentUser() establishment: EstablishmentEntity,
  ): Promise<PaginatedProducts> {
    return this.productService.findAll(pagination, establishment.id);
  }

  @Roles('SUPPLIER', 'ADMIN')
  @Query(() => PaginatedProducts, { name: 'getProductsByCategory' })
  async findAllByCategory(
    @Args('pagination', { nullable: true }) pagination: PaginationInput,
    @Args('category') category: string,
    @CurrentUser() establishment: EstablishmentEntity,
  ): Promise<PaginatedProducts> {
    return this.productService.findByCategory(
      pagination,
      category,
      establishment.id,
    );
  }

  @Roles('SUPPLIER', 'ADMIN')
  @Query(() => ProductEntity, { name: 'getProductById' })
  async findById(
    @Args('id') productId: string,
    @CurrentUser() establishment: EstablishmentEntity,
  ): Promise<ProductEntity> {
    return this.productService.findById(productId, establishment.id);
  }

  @Roles('SUPPLIER', 'ADMIN')
  @Mutation(() => ProductEntity, { name: 'updateProduct' })
  async updateProduct(
    @Args('data') data: UpdateProductInput,
    @CurrentUser() establishment: EstablishmentEntity,
  ): Promise<ProductEntity> {
    return this.productService.update(data, establishment.id);
  }

  @Roles('SUPPLIER', 'ADMIN')
  @Mutation(() => ProductEntity, { name: 'deleteProduct' })
  async deleteProduct(
    @Args('id') productId: string,
    @CurrentUser() establishment: EstablishmentEntity,
  ): Promise<string> {
    return this.productService.delete(productId, establishment.id);
  }

  @Mutation(() => String, { name: 'saveProductImages' })
  async uploadImagesProduct(
    @Args('productImages') images: UploadImageProductInput,
    @CurrentUser() establishment: EstablishmentEntity,
    @Args('productId') productId: string,
  ): Promise<string> {
    const file = images?.image;
    const filePromise = Promise.resolve(file);
    return await this.productService.uploadImagesProduct(
      establishment.id,
      productId,
      filePromise,
    );
  }

  @Query(() => [DownloadImage], {
    name: 'downloadImagesProduct',
  })
  async downloadImagesProduct(
    @Args('establishmentId') establismentId: string,
    @Args('productId') productId: string,
  ) {
    return await this.productService.downloadImages(establismentId, productId);
  }
}
