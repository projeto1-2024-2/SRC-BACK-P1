import { Field, InputType } from '@nestjs/graphql';

@InputType()
export class PaginationInput {
  @Field({ nullable: true, defaultValue: 10 })
  take: number;

  @Field({ nullable: true })
  cursor?: string;

  @Field({ nullable: true, defaultValue: 0 })
  skip?: number;
}
