import { Field, InputType, OmitType } from '@nestjs/graphql';
import { ProductEntity } from '../entities/product.entity';
import { StatusEnum } from 'src/shared/prismagraphql/prisma';
import { IsNotEmpty, IsOptional, IsString } from 'class-validator';

@InputType('CreateProductInput')
export class CreateProductInput extends OmitType(ProductEntity, [
  'id',
  'is_deleted',
  'created_at',
  'updated_at',
  'updated_at',
]) {
  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  title: string;

  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  description: string;

  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  brand: string;

  @Field(() => Number)
  @IsNotEmpty()
  quantity: number;

  @Field(() => String, { nullable: true })
  @IsString()
  @IsOptional()
  establishmentId?: string;

  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  category: string;

  @Field(() => StatusEnum, { defaultValue: StatusEnum.ACTIVE })
  @IsOptional()
  status: StatusEnum;

  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  price: string;

  @Field(() => [String])
  @IsOptional()
  keywords: string[];
}
