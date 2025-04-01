import { Field, InputType } from '@nestjs/graphql';
import { Role } from 'src/user/user.types';

@InputType('CreateConversationInput')
export class CreateConversationInput {
  @Field(() => String)
  title: string;

  @Field(() => String, { nullable: true })
  user_id: string;

  @Field(() => String)
  user_type: Role;

  @Field(() => String, { nullable: true })
  establishment_id: string;
}
