import { Field, InputType } from '@nestjs/graphql';

@InputType()
export class PaginationInput {
  @Field({ nullable: true })
  take?: number = 10;

  @Field({ nullable: true })
  cursor?: string;

  @Field({ nullable: true })
  skip?: number = 0;
}
