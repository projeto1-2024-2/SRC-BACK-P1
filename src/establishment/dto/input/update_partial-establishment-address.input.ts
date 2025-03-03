import { Field, ID, InputType, PartialType } from '@nestjs/graphql';
import { CreateEstablishmentInput } from './create_full_itens-establishment.input';
import { IsNotEmpty, IsString } from 'class-validator';
import { GraphQLJSONObject } from 'graphql-type-json';
import { address } from 'src/shared/prismagraphql/address';

@InputType('UpdatePartialAddressEstablishmentInput')
export class UpdatePartialAddressEstablishmentInput extends PartialType(
  CreateEstablishmentInput,
) {
  @Field(() => ID)
  @IsNotEmpty()
  id: string;

  @Field(() => String)
  @IsString()
  name?: string;

  @Field(() => String)
  @IsString()
  addressId?: string;

  @Field(() => GraphQLJSONObject, { nullable: false })
  @IsNotEmpty()
  address?: address;

  @Field(() => Date)
  updatedAt: Date = new Date();
}
