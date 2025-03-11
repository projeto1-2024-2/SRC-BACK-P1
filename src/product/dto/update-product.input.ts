import { Field, ID, InputType } from '@nestjs/graphql';
import GraphQLJSON from 'graphql-type-json';
import { StatusEnum } from 'src/shared/prismagraphql/prisma';
import { GraphQLDecimal } from 'prisma-graphql-type-decimal';
import { Prisma } from '@prisma/client';
import { IsBoolean, IsNotEmpty, IsNumber, IsString } from 'class-validator';
import { Decimal } from '@prisma/client/runtime';

@InputType('UpdateProductInput')
export class UpdateProductInput {
  @Field(() => ID)
  @IsNotEmpty()
  @IsString()
  id: string;

  @Field(() => String, { nullable: true })
  @IsString()
  title?: string;

  @Field(() => String, { nullable: true })
  @IsString()
  description?: string;

  @Field(() => String, { nullable: true })
  @IsString()
  brand?: string;

  @Field(() => GraphQLJSON, { nullable: true })
  imagens?: Prisma.JsonValue;

  @Field(() => Number, { nullable: true })
  @IsNumber()
  quantity?: number;

  @Field(() => String, { nullable: false })
  @IsNotEmpty()
  @IsString()
  establishmentId: string;

  @Field(() => String, { nullable: true })
  @IsString()
  category?: string;

  @Field(() => StatusEnum, { nullable: true })
  status?: StatusEnum;

  @Field(() => GraphQLDecimal, { nullable: true })
  @IsNumber()
  price?: Decimal;

  @Field(() => String, { nullable: true })
  keywords?: string[];

  @Field(() => Boolean)
  is_deleted?: boolean;
}
