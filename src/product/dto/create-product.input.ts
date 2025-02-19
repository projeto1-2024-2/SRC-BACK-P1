import { Field, InputType, OmitType } from '@nestjs/graphql';
import { ProductEntity } from '../entities/product.entity';
import { Prisma } from '@prisma/client';
import { Decimal } from '@prisma/client/runtime';
import GraphQLJSON from 'graphql-type-json';
import { StatusEnum } from 'src/shared/prismagraphql/prisma';
import { GraphQLDecimal } from 'prisma-graphql-type-decimal';
import { IsNotEmpty, IsOptional, IsString } from 'class-validator';

@InputType('CreateProductInput')
export class CreateProductInput extends OmitType(ProductEntity, ['id']) {
  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  title: string;

  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  description: string;

  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  brand: string;

  @Field(() => GraphQLJSON)
  @IsOptional()
  imagens: Prisma.JsonValue;

  @Field(() => Boolean)
  isAvaliable: boolean;

  @Field(() => Number)
  @IsNotEmpty()
  quantity: number;

  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  establishmentId: string;

  @Field(() => String)
  @IsNotEmpty()
  category: string;

  @Field(() => StatusEnum, { defaultValue: StatusEnum.ACTIVE })
  @IsNotEmpty()
  status: StatusEnum;

  @Field(() => GraphQLDecimal)
  @IsNotEmpty()
  price: Decimal;
}
