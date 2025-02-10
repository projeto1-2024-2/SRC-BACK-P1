import { Field, ObjectType, ID } from '@nestjs/graphql';
import { Product as ProductPrisma } from '@prisma/client';

@ObjectType()
export class ProductEntity implements ProductPrisma {
  @Field(() => ID)
  id: string;

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

  @Field(() => Date)
  createdAt: Date;

  @Field(() => Date)
  updatedAt: Date;
}
