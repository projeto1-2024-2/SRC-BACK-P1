import { Field, InputType, OmitType } from '@nestjs/graphql';
import { ProductEntity } from '../entities/product.entity';
import { Prisma, StatusEnum } from '@prisma/client';
import { Decimal } from '@prisma/client/runtime';
import GraphQLJSON from 'graphql-type-json';

@InputType('CreateProductInput')
export class CreateProductInput extends OmitType(ProductEntity, ['id']) {
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
