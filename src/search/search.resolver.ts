import { UseGuards } from '@nestjs/common';
import { Args, Query, Resolver } from '@nestjs/graphql';
import { JwtAuthGuard } from '../auth/guards/jwt-auth.guard';
import { ProductEntity } from '../product/entities/product.entity';
import { SearchService } from './search.service';

@Resolver(() => ProductEntity)
@UseGuards(JwtAuthGuard)
export class SearchResolver {
  constructor(private readonly searchService: SearchService) {}

  @Query(() => [ProductEntity], { name: 'searchProducts' })
  async searchProducts(
    @Args({ name: 'conversation', type: () => String }) conversation: string,
  ) {
    return await this.searchService.searchProductsPipeline(conversation);
  }
}
