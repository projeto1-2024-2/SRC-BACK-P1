import { Field, ID, InputType, ObjectType } from '@nestjs/graphql';
import { Address } from 'src/shared/prismagraphql/address';
import {
  EstablishmentCount,
  Establishment as EstablishmentPrisma,
} from 'src/shared/prismagraphql/establishment';
import { Product } from 'src/shared/prismagraphql/product';
import { Supplier } from 'src/shared/prismagraphql/supplier';

@InputType()
@ObjectType()
export class EstablishmentEntity implements EstablishmentPrisma {
  @Field(() => ID)
  id: string;

  @Field(() => String)
  name: string;

  @Field(() => String)
  operatingHours: string;

  @Field(() => String)
  commercialPhone: string;

  @Field(() => String)
  taxId: string;

  @Field(() => String)
  addressId: string;

  @Field(() => [Product])
  products?: Product[];

  @Field(() => [Supplier])
  supplier?: Supplier[];

  @Field(() => Address)
  address?: Address;

  @Field(() => EstablishmentCount)
  _count?: EstablishmentCount;

  @Field(() => Date)
  createdAt: Date;

  @Field(() => Date)
  updatedAt: Date;
}
