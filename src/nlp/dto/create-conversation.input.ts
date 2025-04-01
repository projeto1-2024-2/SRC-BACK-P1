import { Field, InputType } from '@nestjs/graphql';

@InputType('CreateConversationInput')
export class CreateConversationInput {
  @Field(() => String)
  title: string;

  @Field(() => String)
  user_id: string;
}
