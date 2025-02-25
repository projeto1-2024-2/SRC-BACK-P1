import { Field, ID, InputType, PartialType } from '@nestjs/graphql';
import { CreateEstablishmentInput } from './create_full_itens-establishment.input';
import { IsNotEmpty, IsString } from 'class-validator';
import { Optional } from '@nestjs/common';
import { CreateProductInput } from 'src/product/dto/create-product.input';
import { UpdateProductInput } from 'src/product/dto/update-product.input';

@InputType('UpdatePArtialProductsEstablishmentInput')
export class UpdatePartialProductsEstablishmentInput extends PartialType(
  CreateEstablishmentInput,
) {
  @Field(() => ID)
  @IsNotEmpty()
  @IsString()
  id: string;

  @Field(() => String)
  @IsString()
  name?: string;

  @Field(() => [CreateProductInput], { nullable: true })
  @Optional()
  newProducts?: CreateProductInput[];

  @Field(() => [UpdateProductInput], { nullable: true })
  @Optional()
  updateProducts?: UpdateProductInput[];

  @Field(() => [String], { nullable: true })
  @Optional()
  deleteProducts?: string[];

  @Field(() => Date)
  updatedAt: Date = new Date();
}
