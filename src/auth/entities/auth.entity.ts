import { Field, ObjectType } from '@nestjs/graphql';
import { User } from 'src/shared/prismagraphql/user';

@ObjectType()
export class AuthResponse {
  @Field(() => User)
  user: User;
  @Field(() => String)
  access_token: string;
}
