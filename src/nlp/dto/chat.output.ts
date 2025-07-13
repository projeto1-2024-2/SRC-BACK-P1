import { Field, InputType } from '@nestjs/graphql';

@InputType('ChatOutput')
export class ChatOutput {
  @Field(() => String)
  response: string;

  @Field(() => [String])
  keywords: string[];
}
