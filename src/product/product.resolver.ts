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

@UseGuards(JwtAuthGuard)
@Roles('SUPPLIER')
@Resolver(() => ProductEntity)
export class ProductResolver {
  constructor(private readonly productService: ProductService) {}

  @Mutation(() => ProductEntity, { name: 'createProduct' })
  async createProduct(
    @Args('data') data: CreateProductInput,
  ): Promise<ProductEntity> {
    return this.productService.create(data);
  }

  @Query(() => PaginatedProducts, { name: 'getProducts' })
  async findAll(
    @Args('pagination', { nullable: true }) pagination: PaginationInput,
    @Args('establishmentId', { nullable: false }) establishmentId: string,
  ): Promise<PaginatedProducts> {
    return this.productService.findAll(pagination, establishmentId);
  }

  @Mutation(() => ProductEntity, { name: 'updateProduct' })
  async updateProduct(
    @Args('data') data: UpdateProductInput,
  ): Promise<ProductEntity> {
    return this.productService.update(data);
  }

  @Mutation(() => ProductEntity, { name: 'deleteProduct' })
  async deleteProduct(@Args('id') id: string): Promise<string> {
    return this.productService.delete(id);
  }
}
