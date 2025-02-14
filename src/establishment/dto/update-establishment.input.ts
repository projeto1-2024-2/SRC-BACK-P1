import { Field, ID, InputType, PartialType } from '@nestjs/graphql';
import { CreateEstablishmentInput } from './create-establishment.input';
import { UpdateAddressInput } from 'src/address/dto/update-address.input';
import { IsNotEmpty, IsString } from 'class-validator';

@InputType()
export class UpdateEstablishmentInput extends PartialType(
  CreateEstablishmentInput,
) {
  @Field(() => ID)
  id: string;

  @Field(() => String, { nullable: true })
  @IsNotEmpty()
  @IsString()
  name?: string;

  @Field(() => String, { nullable: true })
  @IsNotEmpty()
  @IsString()
  operatingHours?: string;

  @Field(() => String, { nullable: true })
  @IsNotEmpty()
  @IsString()
  commercialPhone?: string;

  @Field(() => String, { nullable: true })
  @IsNotEmpty()
  @IsString()
  taxId?: string;

  @Field(() => UpdateAddressInput, { nullable: true })
  @IsNotEmpty()
  @IsString()
  address?: UpdateAddressInput;

  @Field(() => Date)
  @IsNotEmpty()
  @IsString()
  updatedAt: Date;
}
