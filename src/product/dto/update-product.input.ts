import { InputType, Field, ID } from '@nestjs/graphql';
import { Prisma } from '@prisma/client';
import { GraphQLJSON } from 'graphql-type-json';
import { StatusEnum } from 'src/shared/prismagraphql/prisma';
import { GraphQLDecimal } from 'prisma-graphql-type-decimal';
import { Decimal } from '@prisma/client/runtime';

@InputType('UpdateProductInput')
export class UpdateProductInput {
  @Field(() => ID, { nullable: false })
  id: string;

  @Field(() => String, { nullable: true })
  title?: string;

  @Field(() => String, { nullable: true })
  description?: string;

  @Field(() => String, { nullable: true })
  brand?: string;

  @Field(() => GraphQLJSON, { nullable: true })
  imagens?: Prisma.JsonValue;

  @Field(() => Boolean, { nullable: true })
  isAvaliable?: boolean;

  @Field(() => Number, { nullable: true })
  quantity?: number;

  @Field(() => String, { nullable: true })
  establishmentId?: string;

  @Field(() => String, { nullable: true })
  category?: string;

  @Field(() => StatusEnum, { nullable: true })
  status?: StatusEnum;

  @Field(() => GraphQLDecimal, { nullable: true })
  price?: Decimal;

  @Field(() => Date)
  last_update?: Date;

  @Field(() => Boolean)
  is_deleted?: boolean;
}
