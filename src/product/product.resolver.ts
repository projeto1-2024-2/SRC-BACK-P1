import { Args, Mutation, Query, Resolver } from '@nestjs/graphql';
import { ProductService } from './product.service';
import { ProductEntity } from './entities/product.entity';
import { CreateProductInput } from './dto/create-product.input';
import { UpdateProductInput } from './dto/update-product.input';
import { UseGuards } from '@nestjs/common/decorators';
import { JwtAuthGuard } from 'src/auth/guards/jwt-auth.guard';
import { Roles } from 'src/user/decorators';
import { CurrentUser } from 'src/auth/decorators/current-user.decorator';
import { UserEntity } from 'src/user/entities/user.entity';

@Resolver(() => ProductEntity)
@UseGuards(JwtAuthGuard)
export class ProductResolver {
  constructor(private readonly productService: ProductService) {}

  @Roles('SUPPLIER')
  @Mutation(() => ProductEntity, { name: 'createProduct' })
  async createProduct(
    @CurrentUser() user: UserEntity,
    @Args('data') data: CreateProductInput,
  ): Promise<ProductEntity> {
    return this.productService.create(data, user);
  }

  @Roles('SUPPLIER', 'ADMIN')
  @Mutation(() => [ProductEntity], { name: 'createProducts' })
  async createProducts(
    @Args('data', { type: () => [CreateProductInput] })
    data: CreateProductInput[],
    @Args('establishmentId') establishmentId: string,
    @CurrentUser() user: UserEntity,
  ): Promise<ProductEntity[]> {
    return this.productService.createMany(data, establishmentId, user);
  }

  @Roles('SUPPLIER', 'ADMIN')
  @Mutation(() => Number, { name: 'updateProducts' })
  async updateProducts(
    @Args('data', { type: () => [CreateProductInput] })
    data: UpdateProductInput[],
    @Args('establishmentId') establishmentId: string,
    @CurrentUser() user: UserEntity,
  ): Promise<number> {
    return this.productService.updateMany(data, establishmentId, user);
  }

  @Roles('SUPPLIER', 'ADMIN')
  @Mutation(() => Boolean, { name: 'deleteProducts' })
  async deleteProducts(
    @Args('data', { type: () => [String] }) data: string[],
    @Args('establishmentId') establishmentId: string,
    @CurrentUser() user: UserEntity,
  ): Promise<boolean> {
    return this.productService.deleteMany(data, establishmentId, user);
  }

  @Query(() => [ProductEntity], { name: 'getAllProducts' })
  async findAll(): Promise<ProductEntity[]> {
    return this.productService.findAll();
  }

  @Roles('SUPPLIER', 'ADMIN')
  @Mutation(() => ProductEntity, { name: 'updateProduct' })
  async updateProduct(
    @Args('data') data: UpdateProductInput,
    @CurrentUser() user: UserEntity,
  ): Promise<ProductEntity> {
    return this.productService.update(data, user);
  }

  @Roles('SUPPLIER', 'ADMIN')
  @Mutation(() => ProductEntity, { name: 'deleteProduct' })
  async deleteProduct(
    @Args('id') id: string,
    @CurrentUser() user: UserEntity,
  ): Promise<ProductEntity> {
    return this.productService.delete(id, user);
  }
}
