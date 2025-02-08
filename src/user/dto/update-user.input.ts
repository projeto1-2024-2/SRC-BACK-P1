import { InputType, Field, ID } from '@nestjs/graphql';

@InputType()
export class UpdateUserInput {
  @Field(() => ID)
  id: string;

  @Field(() => String)
  name?: string;

  @Field(() => String)
  pseudonym?: string;

  @Field(() => String)
  email?: string;

  @Field(() => String)
  password?: string;

  @Field(() => String)
  phoneNumber?: string;

  @Field(() => String)
  picture?: string;
}
