import { ID, Field, ObjectType } from '@nestjs/graphql';

@ObjectType()
export class RoleEntity {
  @Field(() => ID)
  id: string;

  @Field(() => String)
  name: string;

  @Field(() => [String])
  permissions: string[];

  @Field(() => Date)
  createdAt: Date;

  @Field(() => Date)
  updatedAt: Date;
}
