import { Field, GraphQLISODateTime, ID, ObjectType } from '@nestjs/graphql';
import { GraphQLJSONObject } from 'graphql-type-json';
import { Address } from 'src/shared/prismagraphql/address/address.model';
import {
  EstablishmentCount,
  Establishment as EstablishmentPrisma,
} from 'src/shared/prismagraphql/establishment';
import { Product } from 'src/shared/prismagraphql/product';
import { Supplier } from 'src/shared/prismagraphql/supplier/supplier.model';

@ObjectType('Establishment')
export class EstablishmentEntity implements EstablishmentPrisma {
  @Field(() => ID)
  id: string;

  @Field(() => String)
  name: string;

  @Field(() => GraphQLISODateTime)
  operatingHours: Date;

  @Field(() => String)
  commercialPhone: string;

  @Field(() => String)
  taxId: string;

  @Field(() => String)
  addressId: string;

  @Field(() => [GraphQLJSONObject])
  products?: Product[];

  @Field(() => [GraphQLJSONObject])
  supplier?: Supplier[];

  @Field(() => GraphQLJSONObject)
  address?: Address;

  @Field(() => GraphQLJSONObject)
  _count?: EstablishmentCount;

  @Field(() => GraphQLISODateTime)
  createdAt: Date;

  @Field(() => GraphQLISODateTime)
  updatedAt: Date;
}
