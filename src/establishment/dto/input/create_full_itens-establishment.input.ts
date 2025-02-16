import {
  InputType,
  Field,
  OmitType,
  GraphQLISODateTime,
} from '@nestjs/graphql';
import { IsDate, IsNotEmpty, IsString, Matches } from 'class-validator';
import { EstablishmentEntity } from '../../entities/establishment.entity';
import { Optional } from '@nestjs/common';
import { EstablishmentCount } from 'src/shared/prismagraphql/establishment/establishment-count.output';
import { Supplier } from 'src/shared/prismagraphql/supplier';
import { Product } from 'src/shared/prismagraphql/product';
import { GraphQLJSONObject } from 'graphql-type-json';
import { Address } from 'src/shared/prismagraphql/address';
import { Transform } from 'class-transformer';
import { formatPhone } from '../../../utils/formatPhone.utils';

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
  @IsDate()
  openingHours: Date;

  @Field(() => Date)
  @IsNotEmpty()
  @IsDate()
  closingHours: Date;

  @Field(() => String)
  @IsString()
  @Matches(
    /^(?:\(\d{2}\)\s9\s\d{4}-\d{4}|(?:\(\d{2}\)\s?\d{4}-\d{4}|\d{2}\s9\s\d{4}-\d{4}|\d{2}\s9\s\d{4}-\d{4}|\d{11}))$/,
    { message: 'Número de telefone inválido. Use o formato correto.' },
  )
  @Transform(({ value }: { value: string }) => formatPhone(value))
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
  products?: Product[];

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
