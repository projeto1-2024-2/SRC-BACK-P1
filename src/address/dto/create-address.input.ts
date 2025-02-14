import { Field, InputType, Int, OmitType } from '@nestjs/graphql';
import { AddressEntity } from '../entities/address.entity';
import { IsNotEmpty, IsString } from 'class-validator';

@InputType()
export class CreateAddressInput extends OmitType(AddressEntity, ['id']) {
  @Field(() => String)
  @IsString()
  @IsNotEmpty()
  street: string;

  @Field(() => Int)
  number: number;

  @Field(() => String)
  @IsString()
  @IsNotEmpty()
  complement: string;

  @Field(() => String)
  @IsString()
  @IsNotEmpty()
  neighbourhood: string;

  @Field(() => String)
  @IsString()
  @IsNotEmpty()
  zipCode: string;

  @Field(() => String)
  @IsString()
  @IsNotEmpty()
  city: string;

  @Field(() => String)
  @IsString()
  @IsNotEmpty()
  state: string;
}
