import { Field, ObjectType } from '@nestjs/graphql';
import { user } from 'src/shared/prismagraphql/user';

@ObjectType()
export class AuthResponse {
  @Field(() => user)
  user: user;
  @Field(() => String)
  access_token: string;
}
