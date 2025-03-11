import { Field, ObjectType, ID, Int } from '@nestjs/graphql';
import { Prisma, product as ProductPrisma } from '@prisma/client';
import { Prisma } from '@prisma/client';
import { Decimal } from '@prisma/client/runtime';
import { GraphQLJSON } from 'graphql-type-json';
import { StatusEnum } from 'src/shared/prismagraphql/prisma';
import { GraphQLDecimal } from 'prisma-graphql-type-decimal';
import { product } from 'src/shared/prismagraphql/product';

@ObjectType()
export class ProductEntity implements product {
  @Field(() => ID)
  id: string;

  @Field(() => String)
  title: string;

  @Field(() => String)
  description: string;

  @Field(() => String)
  brand: string;

  @Field(() => GraphQLJSON)
  imagens: Prisma.JsonValue;

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
  last_update: Date;

  @Field(() => Date)
  created_on: Date;

  @Field(() => Boolean)
  is_deleted: boolean;
}
