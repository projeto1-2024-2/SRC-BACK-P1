import { Field, InputType, OmitType } from '@nestjs/graphql';
import { ProductEntity } from '../entities/product.entity';
import { Prisma } from '@prisma/client';
import { Decimal } from '@prisma/client/runtime';
import GraphQLJSON from 'graphql-type-json';
import { StatusEnum } from 'src/shared/prismagraphql/prisma';
import { GraphQLDecimal } from 'prisma-graphql-type-decimal';
import { IsNotEmpty, IsNumber, IsOptional, IsString } from 'class-validator';

@InputType('CreateProductInput')
export class CreateProductInput extends OmitType(ProductEntity, [
  'id',
  'is_deleted',
  'created_at',
  'updated_at',
  'updated_at',
]) {
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

  @Field(() => Number)
  @IsNotEmpty()
  quantity: number;

  @Field(() => String, { nullable: true })
  @IsString()
  establishmentId: string;

  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  category: string;

  @Field(() => StatusEnum, { defaultValue: StatusEnum.ACTIVE })
  @IsOptional()
  status: StatusEnum;

  @Field(() => GraphQLDecimal)
  @IsNotEmpty()
  @IsNumber()
  price: Decimal;

  @Field(() => [String])
  @IsOptional()
  keywords: string[];
}
