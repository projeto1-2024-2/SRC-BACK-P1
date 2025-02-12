import { UseGuards } from '@nestjs/common';
import { Args, Mutation, Query, Resolver } from '@nestjs/graphql';
import { GqlAuthGuard } from 'src/auth/guards/auth.guard';
import { ProductService } from './product.service';
import { ProductEntity } from './entities/product.entity';
import { CreateProductInput } from './dto/create-product.input';
import { UpdateProductInput } from './dto/update-product.input';

@Resolver(() => ProductEntity)
@UseGuards(GqlAuthGuard)
export class ProductResolver {
  constructor(private readonly productService: ProductService) {}

  @Mutation(() => ProductEntity, { name: 'createProduct' })
  async createProduct(@Args('data') data: CreateProductInput) {
    return this.productService.create(data);
  }

  @Query(() => [ProductEntity], { name: 'getAllProducts' })
  async findAll() {
    return this.productService.findAll();
  }

  @Mutation(() => ProductEntity, { name: 'updateProduct' })
  async updateProduct(@Args('data') data: UpdateProductInput) {
    return this.productService.update(data);
  }

  @Mutation(() => ProductEntity, { name: 'deleteProduct' })
  async deleteProduct(@Args('id') id: string) {
    return this.productService.delete(id);
  }
}
