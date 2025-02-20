import { Field, InputType, Int } from '@nestjs/graphql';
import { IsInt, IsNotEmpty, IsString } from 'class-validator';

@InputType()
export class UpdateAddressInput {
  @Field(() => Int, { nullable: true })
  @IsNotEmpty()
  @IsString()
  street: string;

  @Field(() => String, { nullable: true })
  @IsNotEmpty()
  @IsInt()
  number: number;

  @Field(() => String, { nullable: true })
  @IsNotEmpty()
  @IsString()
  complement: string;

  @Field(() => String, { nullable: true })
  @IsNotEmpty()
  @IsString()
  neighbourhood: string;

  @Field(() => String, { nullable: true })
  @IsNotEmpty()
  @IsString()
  zipCode: string;

  @Field(() => String, { nullable: true })
  @IsNotEmpty()
  @IsString()
  city: string;

  @Field(() => String, { nullable: true })
  @IsNotEmpty()
  @IsString()
  state: string;
}
