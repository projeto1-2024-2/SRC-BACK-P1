import { Field, ID, InputType, PartialType } from '@nestjs/graphql';
import { CreateEstablishmentInput } from './create_full_itens-establishment.input';
import { IsDate, IsNotEmpty, IsString } from 'class-validator';
import { GraphQLJSONObject } from 'graphql-type-json';
import { Address } from 'src/shared/prismagraphql/address';
import { Optional } from '@nestjs/common';
import { Product } from 'src/shared/prismagraphql/product';

@InputType('UpdateFullItensEstablishmentInput')
export class UpdateFullItensEstablishmentInput extends PartialType(
  CreateEstablishmentInput,
) {
  @Field(() => ID)
  @IsNotEmpty()
  id: string;

  @Field(() => String)
  @IsString()
  name?: string;

  @Field(() => Date)
  @IsNotEmpty()
  @IsDate()
  openingHours?: Date;

  @Field(() => Date)
  @IsNotEmpty()
  @IsDate()
  closingHours?: Date;

  @Field(() => String)
  @IsString()
  commercialPhone?: string;

  @Field(() => String)
  @IsString()
  taxId?: string;

  @Field(() => String)
  @IsString()
  addressId?: string;

  @Field(() => [GraphQLJSONObject], { nullable: true })
  @Optional()
  products?: Product[];

  @Field(() => String)
  supplierIds: string[];

  @Field(() => GraphQLJSONObject, { nullable: false })
  @IsNotEmpty()
  address?: Address;

  @Field(() => Date)
  updatedAt: Date = new Date();
}
