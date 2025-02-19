import { InputType, Field, OmitType } from '@nestjs/graphql';
import { IsDate, IsNotEmpty, IsString } from 'class-validator';
import { EstablishmentEntity } from '../../entities/establishment.entity';
import { Optional } from '@nestjs/common';
import { CreateAddressInput } from 'src/address/dto/create-address.input';
import { GraphQLJSONObject } from 'graphql-type-json';
import { Product } from 'src/shared/prismagraphql/product';

@InputType('CreateEstablishmentInput')
export class CreateEstablishmentInput extends OmitType(EstablishmentEntity, [
  'id',
  'createdAt',
  'updatedAt',
]) {
  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  name: string;

  @Field(() => Date)
  @IsNotEmpty()
  @IsDate()
  openingHours: Date;

  @Field(() => Date)
  @IsNotEmpty()
  @IsDate()
  closingHours: Date;

  @Field(() => String)
  @IsString()
  commercialPhone: string;

  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  taxId: string;

  @Field(() => String, { nullable: true })
  @Optional()
  addressId?: string;

  @Field(() => [GraphQLJSONObject], { nullable: true })
  @Optional()
  products?: Product[];

  @Field(() => CreateAddressInput, { nullable: false })
  @IsNotEmpty()
  newAddress: CreateAddressInput;

  @Field(() => [String])
  supplierIds?: string[];
}
