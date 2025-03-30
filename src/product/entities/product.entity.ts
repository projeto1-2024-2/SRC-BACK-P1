import { Field, ObjectType, ID, Int } from '@nestjs/graphql';
import { product as ProductPrisma } from 'src/shared/prismagraphql/product';
import { StatusEnum } from 'src/shared/prismagraphql/prisma';

@ObjectType()
export class ProductEntity implements ProductPrisma {
  @Field(() => ID)
  id: string;

  @Field(() => String)
  title: string;

  @Field(() => String)
  description: string;

  @Field(() => String)
  brand: string;

  @Field(() => Int)
  quantity: number;

  @Field(() => String)
  establishmentid: string;

  @Field(() => String)
  category: string;

  @Field(() => StatusEnum)
  status: StatusEnum;

  @Field(() => String)
  price: string;

  @Field(() => [String])
  keywords: string[];

  @Field(() => Date)
  created_at: Date;

  @Field(() => Boolean)
  is_deleted: boolean;

  @Field(() => Date)
  updated_at: Date;

  @Field(() => Date)
  last_update: Date;
}
