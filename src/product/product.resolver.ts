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

  @Mutation(() => [ProductEntity], { name: 'createProducts' })
  async createProducts(
    @Args('data', { type: () => [CreateProductInput] })
    data: CreateProductInput[],
    @Args('establishmentId') establishmentId: string,
  ): Promise<ProductEntity[]> {
    return this.productService.createMany(data, establishmentId);
  }

  @Query(() => [ProductEntity], { name: 'getAllProducts' })
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
  async deleteProduct(@Args('id') id: string): Promise<ProductEntity> {
    return this.productService.delete(id);
  }
}
