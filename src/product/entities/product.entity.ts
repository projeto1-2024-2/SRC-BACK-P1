import { Field, ObjectType, ID, Int } from '@nestjs/graphql';
import { Prisma } from '@prisma/client';
import { product as ProductPrisma } from 'src/shared/prismagraphql/product';
import { Decimal } from '@prisma/client/runtime';
import { GraphQLJSON } from 'graphql-type-json';
import { StatusEnum } from 'src/shared/prismagraphql/prisma';
import { GraphQLDecimal } from 'prisma-graphql-type-decimal';

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
  establishmentId: string;

  @Field(() => String)
  category: string;

  @Field(() => StatusEnum)
  status: StatusEnum;

  @Field(() => GraphQLDecimal)
  price: Decimal;

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
