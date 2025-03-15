import { Field, GraphQLISODateTime, ID, ObjectType } from '@nestjs/graphql';
import { GraphQLJSONObject } from 'graphql-type-json';
import { establishment as EstablishmentPrisma } from 'src/shared/prismagraphql/establishment';
import { EstablishmentCount } from 'src/shared/prismagraphql/prisma';
import { product } from 'src/shared/prismagraphql/product';

@ObjectType()
export class EstablishmentEntity implements EstablishmentPrisma {
  @Field(() => ID)
  id: string;

  @Field(() => String)
  name: string;

  @Field(() => String)
  openingHours: string;

  @Field(() => String)
  closingHours: string;

  @Field(() => String)
  commercialPhone: string;

  @Field(() => String)
  taxId: string;

  @Field(() => String, { nullable: true })
  addressId: string;

  @Field(() => [GraphQLJSONObject])
  products?: product[];

  @Field(() => GraphQLJSONObject)
  _count?: EstablishmentCount;

  @Field(() => GraphQLISODateTime)
  createdAt: Date;

  @Field(() => GraphQLISODateTime)
  updatedAt: Date;
}
