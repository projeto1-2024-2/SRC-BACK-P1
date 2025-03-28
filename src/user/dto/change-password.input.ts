import { InputType, Field } from '@nestjs/graphql';
import { IsNotEmpty, IsString, MinLength } from 'class-validator';

@InputType()
export class ChangePasswordInput {
  @Field()
  @IsNotEmpty()
  @IsString()
  @MinLength(3)
  oldPassword: string;

  @Field()
  @IsNotEmpty()
  @IsString()
  @MinLength(3)
  newPassword: string;

  @Field()
  @IsNotEmpty()
  @IsString()
  token: string;
}
