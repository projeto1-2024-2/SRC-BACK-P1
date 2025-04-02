import { Args, Query, Resolver } from '@nestjs/graphql';
import { ProductEntity } from 'src/product/entities/product.entity';
import { SearchService } from './search.service';
import { UserEntity } from 'src/user/entities/user.entity';
import { CurrentUser } from 'src/auth/decorators/current-user.decorator';
import { EstablishmentEntity } from 'src/establishment/entities/establishment.entity';
import { UseGuards } from '@nestjs/common';
import { JwtAuthGuard } from 'src/auth/guards/jwt-auth.guard';
import { SearchProductsResponse } from './dto/SearchProductsResponse';

@Resolver(() => ProductEntity)
export class SearchResolver {
  constructor(private readonly searchService: SearchService) {}

  @UseGuards(JwtAuthGuard)
  @Query(() => SearchProductsResponse, { name: 'searchProductsAuth' })
  async searchProductsAuth(
    @Args({ name: 'conversation', type: () => String }) conversation: string,
    @CurrentUser() user: EstablishmentEntity | UserEntity,
  ): Promise<SearchProductsResponse> {
    return await this.searchService.searchProductsPipeline(conversation, user);
  }

  @Query(() => SearchProductsResponse, { name: 'searchProducts' })
  async searchProducts(
    @Args({ name: 'conversation', type: () => String }) conversation: string,
  ): Promise<SearchProductsResponse> {
    return await this.searchService.searchProductsPipeline(conversation);
  }
}
