import { Field, ObjectType } from '@nestjs/graphql';
import { product } from 'src/shared/prismagraphql/product';

@ObjectType()
export class PaginatedProducts {
  @Field(() => [product])
  products: product[];

  @Field()
  hasMore: boolean;
}
