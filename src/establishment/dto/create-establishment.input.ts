import {
  InputType,
  Field,
  OmitType,
  GraphQLISODateTime,
} from '@nestjs/graphql';
import { IsNotEmpty, IsString } from 'class-validator';
import { EstablishmentEntity } from '../entities/establishment.entity';
import { Optional } from '@nestjs/common';
import { EstablishmentCount } from 'src/shared/prismagraphql/establishment/establishment-count.output';
import { Supplier } from 'src/shared/prismagraphql/supplier';
import { Product } from 'src/shared/prismagraphql/product';
import { GraphQLJSONObject } from 'graphql-type-json';
import { Address } from 'src/shared/prismagraphql/address';

@InputType('CreateEstablishmentInput')
export class CreateEstablishmentInput extends OmitType(EstablishmentEntity, [
  'id',
]) {
  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  name: string;

  @Field(() => Date)
  @IsNotEmpty()
  operatingHours: Date;

  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  commercialPhone: string;

  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  taxId: string;

  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  addressId: string;

  @Field(() => [GraphQLJSONObject], { nullable: true })
  @Optional()
  productss?: Product[];

  @Field(() => [GraphQLJSONObject], { nullable: true })
  @Optional()
  supplier?: Supplier[];

  @Field(() => GraphQLJSONObject, { nullable: false })
  @IsNotEmpty()
  address?: Address;

  @Field(() => GraphQLJSONObject, { nullable: false })
  @IsNotEmpty()
  _count?: EstablishmentCount;

  @Field(() => GraphQLISODateTime)
  createdAt: Date = new Date();

  @Field(() => GraphQLISODateTime)
  updatedAt: Date = new Date();
}
// operatingHours: string = new Date().toLocaleTimeString();
