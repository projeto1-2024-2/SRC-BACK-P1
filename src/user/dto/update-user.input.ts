import { InputType, Field, ID } from '@nestjs/graphql';
import { IsNotEmpty, IsString } from 'class-validator';

@InputType()
export class UpdateUserInput {
  @Field(() => ID)
  @IsNotEmpty()
  @IsString()
  id: string;

  @Field(() => String)
  @IsString()
  name?: string;

  @Field(() => String)
  @IsString()
  pseudonym?: string;

  @Field(() => String)
  @IsString()
  email?: string;

  @Field(() => String)
  @IsString()
  phoneNumber?: string;

  @Field(() => String)
  @IsString()
  picture?: string;
}
