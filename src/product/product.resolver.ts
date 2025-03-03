import { Args, Mutation, Query, Resolver } from '@nestjs/graphql';
import { ProductService } from './product.service';
import { ProductEntity } from './entities/product.entity';
import { CreateProductInput } from './dto/create-product.input';
import { UpdateProductInput } from './dto/update-product.input';

@Resolver(() => ProductEntity)
// @UseGuards(JwtAuthGuard)
// @Roles('SUPPLIER')
export class ProductResolver {
  constructor(private readonly productService: ProductService) {}

  @Mutation(() => ProductEntity, { name: 'createProduct' })
  async createProduct(
    @Args('data') data: CreateProductInput,
  ): Promise<ProductEntity> {
    return this.productService.create(data);
  }

  @Query(() => [ProductEntity], { name: 'getProducts' })
  async findAll(): Promise<ProductEntity[]> {
    return this.productService.findAll();
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
