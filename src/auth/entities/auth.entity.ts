import { createUnionType, Field, ObjectType } from '@nestjs/graphql';
import { establishment } from 'src/shared/prismagraphql/establishment';
import { user } from 'src/shared/prismagraphql/user';

@ObjectType()
export class AuthResponse {
  @Field(() => UserOrEstablishment)
  user: user | establishment;
  @Field(() => String)
  access_token: string;
}

export const UserOrEstablishment = createUnionType({
  name: 'UserOrEstablisment',
  types: () => [user, establishment],
});
