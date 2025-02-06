import { InputType, Field, OmitType } from '@nestjs/graphql';
import { User } from '../entities/user.entity';

@InputType()
export class CreateUserInput extends OmitType(User, [
  'id',
  'createdAt',
  'updatedAt',
]) {
  @Field(() => String)
  name: string;

  @Field(() => String)
  pseudonym: string;
}
