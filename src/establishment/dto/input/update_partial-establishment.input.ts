import { Field, ID, InputType, PartialType } from '@nestjs/graphql';
import { CreateEstablishmentInput } from './create_full_itens-establishment.input';
import { CreateAddressInput } from 'src/address/dto/create-address.input';
import { IsNotEmpty, IsString } from 'class-validator';
@InputType('UpdatePartialEstablishmentInput')
export class UpdatePartialEstablishmentInput extends PartialType(
  CreateEstablishmentInput,
) {
  @Field(() => ID)
  @IsNotEmpty()
  @IsString()
  id: string;

  @Field(() => CreateAddressInput)
  @IsNotEmpty()
  newAddress?: CreateAddressInput;
}
