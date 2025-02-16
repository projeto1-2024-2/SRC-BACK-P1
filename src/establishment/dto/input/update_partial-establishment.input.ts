import { Field, ID, InputType, PartialType } from '@nestjs/graphql';
import { CreateEstablishmentInput } from './create_full_itens-establishment.input';
import { IsDate, IsNotEmpty, IsString, Matches } from 'class-validator';
import { Transform } from 'class-transformer';
import { formatPhone } from '../../../utils/formatPhone.utils';

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
  @Matches(
    /^(?:\(\d{2}\)\s9\s\d{4}-\d{4}|(?:\(\d{2}\)\s?\d{4}-\d{4}|\d{2}\s9\s\d{4}-\d{4}|\d{2}\s9\s\d{4}-\d{4}|\d{11}))$/,
    { message: 'Número de telefone inválido. Use o formato correto.' },
  )
  @Transform(({ value }: { value: string }) => formatPhone(value))
  commercialPhone?: string;

  @Field(() => String)
  @IsString()
  taxId?: string;

  @Field(() => Date)
  updatedAt: Date = new Date();
}
