import { InputType, Field, OmitType } from '@nestjs/graphql';
import { UserEntity } from '../entities/user.entity';
import { Optional } from '@nestjs/common';
import { IsEmail, IsNotEmpty, IsPhoneNumber, IsString } from 'class-validator';
import { Role } from '../user.types';
import { CreateAddressInput } from '../../address/dto/create-address.input';

@InputType('CreateUserInput')
export class CreateUserInput extends OmitType(UserEntity, [
  'id',
  'createdAt',
  'updatedAt',
  'addressId',
  'pseudonym',
  'image',
]) {
  @Field(() => String, {
    nullable: false,
  })
  @IsNotEmpty()
  @IsString()
  name: string;

  @Field(() => String, { nullable: true })
  @Optional()
  @IsString()
  pseudonym?: string;

  @Field(() => String, {
    nullable: false,
  })
  @IsNotEmpty()
  @IsString()
  @IsEmail()
  email: string;

  @Field(() => String, {
    nullable: false,
  })
  @IsNotEmpty()
  @IsString()
  password: string;

  @Field(() => String, {
    nullable: false,
  })
  @IsNotEmpty()
  @IsPhoneNumber('BR')
  phoneNumber: string;

  @Field(() => CreateAddressInput, { nullable: false })
  @IsNotEmpty()
  newAddress: CreateAddressInput;

  @Field(() => String, { defaultValue: Role.CONSUMER })
  role: Role;
}
