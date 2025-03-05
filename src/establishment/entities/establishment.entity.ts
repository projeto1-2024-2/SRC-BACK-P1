import { Field, GraphQLISODateTime, ID, ObjectType } from '@nestjs/graphql';
import { GraphQLJSONObject } from 'graphql-type-json';
import { ProductEntity } from 'src/product/entities/product.entity';
import { establishment as EstablishmentPrisma } from 'src/shared/prismagraphql/establishment';
import { EstablishmentCount } from 'src/shared/prismagraphql/prisma';
import { product } from 'src/shared/prismagraphql/product';

@ObjectType()
export class EstablishmentEntity implements EstablishmentPrisma {
  @Field(() => ID)
  id: string;

  @Field(() => String)
  name: string;

  @Field(() => Date)
  openingHours: Date;

  @Field(() => Date)
  closingHours: Date;

  @Field(() => String)
  commercialPhone: string;

  @Field(() => String)
  taxId: string;

  @Field(() => String, { nullable: true })
  addressId: string;

  @Field(() => [ProductEntity])
  products?: product[];

  @Field(() => GraphQLJSONObject)
  _count?: EstablishmentCount;

  @Field(() => GraphQLISODateTime)
  createdAt: Date;

  @Field(() => GraphQLISODateTime)
  updatedAt: Date;
}
