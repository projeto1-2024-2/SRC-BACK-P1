import { Field, ID, InputType, PartialType } from '@nestjs/graphql';
import { CreateEstablishmentInput } from './create_full_itens-establishment.input';
import { IsDate, IsNotEmpty, IsString } from 'class-validator';
@InputType('UpdatePartialEstablishmentInput')
export class UpdatePartialEstablishmentInput extends PartialType(
  CreateEstablishmentInput,
) {
  @Field(() => ID)
  @IsNotEmpty()
  id: string;

  @Field(() => String)
  @IsString()
  name?: string;

  @Field(() => Date)
  @IsNotEmpty()
  @IsDate()
  openingHours?: Date;

  @Field(() => Date)
  @IsNotEmpty()
  @IsDate()
  closingHours?: Date;

  @Field(() => String)
  @IsString()
  commercialPhone?: string;

  @Field(() => String)
  @IsString()
  taxId?: string;
}
