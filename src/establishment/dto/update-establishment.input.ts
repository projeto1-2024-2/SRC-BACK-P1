import {
  Field,
  GraphQLISODateTime,
  ID,
  InputType,
  PartialType,
} from '@nestjs/graphql';
import { CreateEstablishmentInput } from './create-establishment.input';
import { IsNotEmpty, IsString } from 'class-validator';

@InputType('UpdateEstablishmentInput')
export class UpdateEstablishmentInput extends PartialType(
  CreateEstablishmentInput,
) {
  @Field(() => ID)
  @IsNotEmpty()
  id: string;

  @Field(() => String)
  @IsString()
  name?: string;

  @Field(() => Date)
  operatingHours?: Date;

  @Field(() => String)
  @IsString()
  commercialPhone?: string;

  @Field(() => String)
  @IsString()
  taxId?: string;

  @Field(() => String)
  @IsString()
  addressId?: string;

  @Field(() => Date)
  updatedAt: Date = new Date();
}
