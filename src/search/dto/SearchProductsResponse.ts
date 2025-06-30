import { ObjectType, Field } from '@nestjs/graphql';
import { ProductEntity } from 'src/product/entities/product.entity';

@ObjectType()
export class SearchProductsResponse {
  @Field(() => [ProductEntity])
  products: ProductEntity[];

  @Field(() => String)
  chatResponse: string;
}
