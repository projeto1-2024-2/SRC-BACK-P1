import { Field, InputType, Int, OmitType } from '@nestjs/graphql';
import { AddressEntity } from '../entities/address.entity';

@InputType()
export class CreateAddressInput extends OmitType(AddressEntity, ['id']) {
  @Field(() => String)
  street: string;

  @Field(() => Int)
  number: number;

  @Field(() => String)
  complement: string;

  @Field(() => String)
  neighbourhood: string;

  @Field(() => String)
  zipCode: string;

  @Field(() => String)
  city: string;

  @Field(() => String)
  state: string;
}
