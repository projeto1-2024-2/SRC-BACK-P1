import { UseGuards } from '@nestjs/common';
import { Args, Mutation, Query, Resolver } from '@nestjs/graphql';
import { JwtAuthGuard } from 'src/auth/guards/jwt-auth.guard';
import { ProductEntity } from 'src/product/entities/product.entity';
import { SearchService } from './search.service';

@Resolver(() => ProductEntity)
//@UseGuards(JwtAuthGuard)
export class SearchResolver {
  constructor(private readonly searchService: SearchService) {}

  @Query(() => [ProductEntity], { name: 'searchProducts' })
  async searchProducts(
    @Args({ name: 'keywords', type: () => [String] }) keywords: string[],
  ) {
    return await this.searchService.searchProducts(keywords);
  }
}
