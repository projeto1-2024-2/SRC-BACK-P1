import { UseGuards } from '@nestjs/common';
import { Args, Mutation, Query, Resolver } from '@nestjs/graphql';
import { ProductService } from './product.service';
import { IsPublicRoute } from 'src/auth/decorators/is-public-route.decorator';
import { ProductEntity } from './entities/product.entity';
import { CreateProductInput } from './dto/create-product.input';
import { UpdateProductInput } from './dto/update-product.input';
import { JwtAuthGuard } from 'src/auth/guards/jwt-auth.guard';

@Resolver(() => ProductEntity)
@UseGuards(JwtAuthGuard)
export class ProductResolver {
  constructor(private readonly productService: ProductService) {}

  @IsPublicRoute()
  @Mutation(() => ProductEntity, { name: 'createProduct' })
  async createProduct(@Args('data') data: CreateProductInput) {
    return this.productService.create(data);
  }

  @Query(() => [ProductEntity], { name: 'getAllProducts' })
  async findAll() {
    return this.productService.findAll();
  }

  @Query(() => [ProductEntity], { name: 'getProductsByEstablishment' })
  async findByEstablishment(@Args('establishmentId') establishmentId: string) {
    return this.productService.findByEstablishment(establishmentId);
  }

  @Query(() => [ProductEntity], { name: 'getProductsByCategory' })
  async findByCategory(@Args('category') category: string) {
    return this.productService.findByCategory(category);
  }

  @Mutation(() => ProductEntity, { name: 'updateProduct' })
  async updateProduct(
    @Args('id') id: string,
    @Args('data') data: UpdateProductInput,
  ) {
    return this.productService.update(id, data);
  }

  @Mutation(() => ProductEntity, { name: 'deleteProduct' })
  async deleteProduct(@Args('id') id: string) {
    return this.productService.delete(id);
  }
}
