import { Field, InputType, Int, OmitType } from '@nestjs/graphql';
import { AddressEntity } from '../entities/address.entity';
import { IsNotEmpty, IsNumber, IsString } from 'class-validator';

@InputType()
export class CreateAddressInput extends OmitType(AddressEntity, ['id']) {
  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  street: string;

  @Field(() => Int)
  @IsNumber()
  number: number;

  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  complement: string;

  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  neighbourhood: string;

  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  zipCode: string;

  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  city: string;

  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  state: string;
}
