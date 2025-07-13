import { createUnionType, Field, ObjectType } from '@nestjs/graphql';
import { establishment } from '../../shared/prismagraphql/establishment';
import { user } from '../../shared/prismagraphql/user';

@ObjectType()
export class AuthResponse {
  @Field(() => String)
  id: string;
  @Field(() => UserOrEstablishment)
  user: user | establishment;
  @Field(() => String)
  access_token: string;
}

export const UserOrEstablishment = createUnionType({
  name: 'UserOrEstablisment',
  types: () => [user, establishment],
});
