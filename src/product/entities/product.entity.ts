import { Field, ObjectType, ID } from '@nestjs/graphql';
import { Prisma, Product as ProductPrisma, StatusEnum } from '@prisma/client';
import { Decimal } from '@prisma/client/runtime';
import { GraphQLJSON } from 'graphql-type-json';

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

  @Field(() => GraphQLJSON)
  imagens: Prisma.JsonValue;

  @Field(() => Boolean)
  isAvaliable: boolean;

  @Field(() => Number)
  quantity: number;

  @Field(() => String)
  establishmentId: string;

  @Field(() => String)
  category: string;

  @Field(() => String)
  status: StatusEnum;

  @Field(() => Decimal)
  price: Decimal;
}
