import { Args, Query, Resolver } from '@nestjs/graphql';
import { ProductEntity } from 'src/product/entities/product.entity';
import { SearchService } from './search.service';
import { UserEntity } from 'src/user/entities/user.entity';
import { CurrentUser } from 'src/auth/decorators/current-user.decorator';

@Resolver(() => ProductEntity)
export class SearchResolver {
  constructor(private readonly searchService: SearchService) {}

  @Query(() => [ProductEntity], { name: 'searchProducts' })
  async searchProducts(
    @Args({ name: 'conversation', type: () => String }) conversation: string,
    @CurrentUser() user: UserEntity,
  ) {
    return await this.searchService.searchProductsPipeline(user, conversation);
  }
}
