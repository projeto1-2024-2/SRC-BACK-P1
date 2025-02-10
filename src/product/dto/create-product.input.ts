import { Field, InputType, OmitType } from '@nestjs/graphql';
import { ProductEntity } from '../entities/product.entity';

@InputType('CreateProductInput')
export class CreateProductInput extends OmitType(ProductEntity, [
  'id',
  'createdAt',
  'updatedAt',
]) {
  @Field(() => String)
  name: string;

  @Field(() => String)
  description: string;

  @Field(() => String)
  brand: string;

  @Field(() => String)
  availability: string;

  @Field(() => String)
  images: string[];

  @Field(() => String)
  coverImage: string;
}
