import { InputType, Field } from '@nestjs/graphql';
import { IsNotEmpty, IsOptional, IsString } from 'class-validator';

@InputType()
export class AuthInput {
  @Field(() => String, { nullable: true })
  @IsOptional()
  email: string;

  @Field(() => String, { nullable: true })
  @IsOptional()
  taxId: string;

  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  password: string;
}
