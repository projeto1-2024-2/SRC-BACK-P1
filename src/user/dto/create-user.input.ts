import { InputType, Field, OmitType } from '@nestjs/graphql';
import { UserEntity } from '../entities/user.entity';
import { Optional } from '@nestjs/common';

@InputType('CreateUserInput')
export class CreateUserInput extends OmitType(UserEntity, [
  'id',
  'createdAt',
  'updatedAt',
  'role',
]) {
  @Field(() => String)
  name: string;

  @Field(() => String)
  pseudonym: string;

  @Field(() => String)
  email: string;

  @Field(() => String)
  password: string;

  @Field(() => String)
  phoneNumber: string;

  @Field(() => String, { nullable: true })
  @Optional()
  picture: string;
}
