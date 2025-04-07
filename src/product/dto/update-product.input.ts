import { Field, ID, InputType } from '@nestjs/graphql';
import { StatusEnum } from '../../shared/prismagraphql/prisma';
import { GraphQLDecimal } from 'prisma-graphql-type-decimal';
import { IsNotEmpty, IsNumber, IsString } from 'class-validator';


@InputType('UpdateProductInput')
export class UpdateProductInput {
  @Field(() => ID)
  @IsNotEmpty()
  @IsString()
  id: string;

  @Field(() => String, { nullable: true })
  @IsString()
  @IsOptional()
  title?: string;

  @Field(() => String, { nullable: true })
  @IsString()
  @IsOptional()
  description?: string;

  @Field(() => String, { nullable: true })
  @IsString()
  @IsOptional()
  brand?: string;

  @Field(() => String, { nullable: true })
  @IsString()
  @IsOptional()
  category?: string;

  @Field(() => String, { nullable: true })
  @IsString()
  @IsOptional()
  price?: string;

  @Field(() => String, { nullable: true })
  @IsOptional()
  keywords?: string[];
}
