import { Field, ID, InputType, Int } from '@nestjs/graphql';

@InputType()
export class UpdateAddressInput {
  @Field(() => ID, { nullable: false })
  id: string;

  @Field(() => Int, { nullable: true })
  street: string;

  @Field(() => String, { nullable: true })
  number: number;

  @Field(() => String, { nullable: true })
  complement: string;

  @Field(() => String, { nullable: true })
  neighbourhood: string;
  zipCode: string;

  @Field(() => String, { nullable: true })
  city: string;

  @Field(() => String, { nullable: true })
  state: string;
}
