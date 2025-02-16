import { Field, ID, InputType, PartialType } from '@nestjs/graphql';
import { CreateEstablishmentInput } from './create_full_itens-establishment.input';
import { IsNotEmpty, IsString } from 'class-validator';
import { GraphQLJSONObject } from 'graphql-type-json';
import { Optional } from '@nestjs/common';
import { Product } from '@prisma/client';

@InputType('UpdatePArtialProductsEstablishmentInput')
export class UpdatePartialProductsEstablishmentInput extends PartialType(
  CreateEstablishmentInput,
) {
  @Field(() => ID)
  @IsNotEmpty()
  id: string;

  @Field(() => String)
  @IsString()
  name?: string;

  @Field(() => [GraphQLJSONObject], { nullable: true })
  @Optional()
  products?: Product[];

  @Field(() => Date)
  updatedAt: Date = new Date();
}
