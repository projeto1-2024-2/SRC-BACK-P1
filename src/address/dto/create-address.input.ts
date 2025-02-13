import { Field, InputType, Int, OmitType } from '@nestjs/graphql';
import { AddressEntity } from '../entities/address.entity';

@InputType()
export class CreateAddressInput extends OmitType(AddressEntity, ['id']) {
  @Field(() => Int)
  street: string;

  @Field(() => String)
  number: number;

  @Field(() => String)
  complement: string;

  @Field(() => String)
  neighbourhood: string;
  zipCode: string;

  @Field(() => String)
  city: string;

  @Field(() => String)
  state: string;
}
