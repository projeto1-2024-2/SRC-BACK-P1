import { Field, ID, InputType } from '@nestjs/graphql';
import { StatusEnum } from 'src/shared/prismagraphql/prisma';
import { GraphQLDecimal } from 'prisma-graphql-type-decimal';
import { IsNotEmpty, IsNumber, IsString } from 'class-validator';
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

  @Field(() => Number, { nullable: true })
  @IsNumber()
  quantity?: number;

  @Field(() => String, { nullable: true })
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
