import { InputType, Field, OmitType } from '@nestjs/graphql';
import { IsNotEmpty, IsString } from 'class-validator';
import { EstablishmentEntity } from '../entities/establishment.entity';
import { Optional } from '@nestjs/common';
import { Address } from 'src/shared/prismagraphql/address';
import { EstablishmentCount } from 'src/shared/prismagraphql/establishment/establishment-count.output';
import { Supplier } from 'src/shared/prismagraphql/supplier';
import { Product } from 'src/shared/prismagraphql/product/product.model';

@InputType('CreateEstablishmentInput')
export class CreateEstablishmentInput extends OmitType(EstablishmentEntity, [
  'id',
]) {
  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  name: string;

  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  operatingHours: string;

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

  @Field(() => [Product], { nullable: true })
  @Optional()
  products?: Product[];

  @Field(() => [Supplier], { nullable: true })
  @Optional()
  supplier?: Supplier[];

  @Field(() => Address, { nullable: false })
  @IsNotEmpty()
  address?: Address;

  @Field(() => EstablishmentCount, { nullable: false })
  @IsNotEmpty()
  _count?: EstablishmentCount;
}
