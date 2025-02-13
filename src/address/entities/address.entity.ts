import { Field, ID, Int, ObjectType } from '@nestjs/graphql';
import { Address as AddressPrisma } from '@prisma/client';

@ObjectType()
export class AddressEntity implements AddressPrisma {
  @Field(() => ID)
  id: string;

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
