import { Field, ObjectType } from '@nestjs/graphql';
import { GraphQLJSONObject } from 'graphql-type-json';
import { EstablishmentEntity } from 'src/establishment/entities/establishment.entity';
import { Product } from 'src/shared/prismagraphql/product';

@ObjectType('ReturnPartialProductsFromEstablishment')
export class ReturnPartialProductsFromEstablishmentDto {
  @Field()
  id!: string;

  @Field()
  name!: string;

  @Field(() => [GraphQLJSONObject], { nullable: true })
  products!: Product[];

  constructor(establishment: EstablishmentEntity) {
    this.id = establishment.id;
    this.name = establishment.name;
    this.products = establishment.products ?? [];
  }
}
