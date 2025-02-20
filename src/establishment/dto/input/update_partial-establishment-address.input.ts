import { Field, ID, InputType, PartialType } from '@nestjs/graphql';
import { CreateEstablishmentInput } from './create_full_itens-establishment.input';
import { IsNotEmpty, IsString } from 'class-validator';
import { GraphQLJSONObject } from 'graphql-type-json';
import { UpdateAddressInput } from 'src/address/dto/update-address.input';

@InputType('UpdatePartialAddressEstablishmentInput')
export class UpdatePartialAddressEstablishmentInput extends PartialType(
  CreateEstablishmentInput,
) {
  @Field(() => ID)
  @IsNotEmpty()
  id: string;

  @Field(() => String)
  @IsString()
  name: string;

  @Field(() => GraphQLJSONObject, { nullable: false })
  @IsNotEmpty()
  newAddress!: UpdateAddressInput;
}
