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

  @Field(() => String, { nullable: true })
  @IsString()
  name?: string;

  @Field(() => GraphQLISODateTime, { nullable: true })
  operatingHours?: Date;

  @Field(() => String, { nullable: true })
  @IsString()
  commercialPhone?: string;

  @Field(() => String, { nullable: true })
  @IsString()
  taxId?: string;

  @Field(() => String, { nullable: true })
  @IsString()
  addressId?: string;

  @Field(() => GraphQLISODateTime)
  updatedAt: Date = new Date();
}
