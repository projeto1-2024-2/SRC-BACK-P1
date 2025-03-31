import { InputType, Field, OmitType } from '@nestjs/graphql';
import { IsDate, IsNotEmpty, IsString } from 'class-validator';
import { EstablishmentEntity } from '../entities/establishment.entity';
import { Optional } from '@nestjs/common';
import { CreateAddressInput } from '../../address/dto/create-address.input';
import { GraphQLJSONObject } from 'graphql-type-json';
import { product } from '../../shared/prismagraphql/product';
import { Role } from '../../user/user.types';

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

  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  openingHours: string;

  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  closingHours: string;

  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  commercialPhone: string;

  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  taxId: string;

  @Field(() => [GraphQLJSONObject], { nullable: true })
  @Optional()
  products?: product[];

  @Field(() => CreateAddressInput, { nullable: false })
  @IsNotEmpty()
  newAddress: CreateAddressInput;

  @Field(() => String, {
    nullable: false,
  })
  @IsNotEmpty()
  @IsString()
  password: string;

  @Field(() => String, { defaultValue: Role.SUPPLIER })
  role: Role;
}
