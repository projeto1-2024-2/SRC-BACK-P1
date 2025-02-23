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

  @Mutation(() => String, { name: 'updateProduct' })
  async updateProduct(
    @Args({ name: 'id', type: () => String }) id: string,
    @Args({ name: 'newTitle', type: () => String }) title: string,
    @Args({ name: 'newBrand', type: () => String }) brand: string,
    @Args({ name: 'newDescription', type: () => String }) description: string,
  ) {
    return await this.searchService.updateDocumentByQuery(
      id,
      title,
      brand,
      description,
    );
  }

  @Mutation(() => String, { name: 'deleteProduct' })
  async deleteProduct(@Args({ name: 'id', type: () => String }) id: string) {
    return await this.searchService.deleteProduct(id);
  }
}
