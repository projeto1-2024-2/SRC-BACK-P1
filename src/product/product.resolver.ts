import { UseGuards } from '@nestjs/common';
import { Mutation, Resolver } from '@nestjs/graphql';
import { GqlAuthGuard } from 'src/auth/guards/auth.guard';
import { ProductService } from './product.service';
import { IsPublicRoute } from 'src/auth/decorators/is-public-route.decorator';
import { ProductEntity } from './entities/product.entity';

@Resolver()
@UseGuards(GqlAuthGuard)
export class ProductResolver {
  constructor(private readonly productService: ProductService) {}

  @IsPublicRoute()
  @Mutation(() => ProductEntity, { name: 'createProduct, nullable: true })
  async createProduct(@Args('data') data: CreateUserInput) {
    return this.userService.create(data);
  }
}
