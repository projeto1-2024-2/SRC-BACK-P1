import { Field, InputType, Int } from '@nestjs/graphql';

@InputType()
export class UpdateAddressInput {
  @Field(() => Int, { nullable: true })
  street: string;

  @Field(() => String, { nullable: true })
  number: number;

  @Field(() => String, { nullable: true })
  complement: string;

  @Field(() => String, { nullable: true })
  neighbourhood: string;

  @Field(() => String, { nullable: true })
  zipCode: string;

  @Field(() => String, { nullable: true })
  city: string;

  @Field(() => String, { nullable: true })
  state: string;
}
