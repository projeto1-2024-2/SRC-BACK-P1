import { InputType, Field, OmitType } from '@nestjs/graphql';
import { UserEntity } from '../entities/user.entity';
import { Optional } from '@nestjs/common';
import { IsEmail, IsPhoneNumber, IsString } from 'class-validator';
import { Role } from '../user.types';

@InputType('CreateUserInput')
export class CreateUserInput extends OmitType(UserEntity, [
  'id',
  'createdAt',
  'updatedAt',
  'addressId',
  'supplier',
]) {
  @Field(() => String, {
    nullable: false,
  })
  @IsString()
  name: string;

  @Field(() => String)
  @Optional()
  @IsString()
  pseudonym: string;

  @Field(() => String, {
    nullable: false,
  })
  @IsEmail()
  email: string;

  @Field(() => String, {
    nullable: false,
  })
  @IsString()
  password: string;

  @Field(() => String, {
    nullable: false,
  })
  @IsPhoneNumber()
  phoneNumber: string;

  @Field(() => String, { nullable: true })
  @Optional()
  @IsString()
  image: Buffer;

  @Field(() => String, { nullable: true })
  @Optional()
  addressId: string;

  @Field(() => String, { defaultValue: Role.CONSUMER })
  role: Role;
}
