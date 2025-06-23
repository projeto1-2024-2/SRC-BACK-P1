import { Field, InputType } from '@nestjs/graphql';

@InputType('ChatOutput')
export class ChatOutput {
  @Field(() => String)
  conversation: string;

  @Field(() => [String])
  keywords: string[];
}
