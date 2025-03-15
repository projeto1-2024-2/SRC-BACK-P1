import { Field, ID, InputType, PartialType } from '@nestjs/graphql';
import { CreateEstablishmentInput } from './create_full_itens-establishment.input';
import { IsDate, IsNotEmpty, IsString } from 'class-validator';
import { Optional } from '@nestjs/common';
import { CreateProductInput } from 'src/product/dto/create-product.input';
import { CreateAddressInput } from 'src/address/dto/create-address.input';
import { UpdateProductInput } from 'src/product/dto/update-product.input';

@InputType('UpdateFullItensEstablishmentInput')
export class UpdateFullItensEstablishmentInput extends PartialType(
  CreateEstablishmentInput,
) {
  @Field(() => ID)
  @IsNotEmpty()
  @IsString()
  id: string;

  @Field(() => String)
  @Optional()
  @IsString()
  name?: string;

  @Field(() => Date)
  @Optional()
  @IsDate()
  openingHours?: Date;

  @Field(() => Date)
  @Optional()
  @IsDate()
  closingHours?: Date;

  @Field(() => String)
  @Optional()
  @IsString()
  commercialPhone?: string;

  @Field(() => String)
  @Optional()
  @IsString()
  taxId?: string;

  @Field(() => [CreateProductInput], { nullable: true })
  @Optional()
  newProducts?: CreateProductInput[];

  @Field(() => [UpdateProductInput], { nullable: true })
  @Optional()
  updateProducts?: UpdateProductInput[];

  @Field(() => [String], { nullable: true })
  @Optional()
  deleteProducts?: string[];

  @Field(() => CreateAddressInput, { nullable: true })
  @Optional()
  newAddress?: CreateAddressInput;
}
