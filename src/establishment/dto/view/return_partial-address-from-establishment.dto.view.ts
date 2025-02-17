import { EstablishmentEntity } from 'src/establishment/entities/establishment.entity';
import { Address } from 'src/shared/prismagraphql/address';
import { Field, ObjectType } from '@nestjs/graphql';
import { GraphQLJSONObject } from 'graphql-type-json';

@ObjectType('ReturnPartialAddressFromEstablishmentDto')
export class ReturnPartialAddressFromEstablishmentDto {
  @Field()
  id!: string;

  @Field()
  name!: string;

  @Field(() => GraphQLJSONObject, { nullable: true })
  address!: Address;

  constructor(establishment: EstablishmentEntity) {
    this.id = establishment.id;
    this.name = establishment.name;
    this.address = establishment.address;
  }
}
