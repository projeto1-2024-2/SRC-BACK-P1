import { Field, ID, Int, ObjectType } from '@nestjs/graphql';
import { Address as AddressPrisma } from '@prisma/client';

@ObjectType()
export class Address implements AddressPrisma {
  @Field(() => ID)
  id: string;

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
