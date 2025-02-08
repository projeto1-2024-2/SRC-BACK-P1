import { Field, ID, ObjectType } from '@nestjs/graphql';
import { User as UserPrisma } from '@prisma/client';
import { RoleEntity } from './role.entity';

@ObjectType()
export class UserEntity implements UserPrisma {
  @Field(() => ID)
  id: string;

  @Field(() => String)
  name: string;

  @Field(() => String)
  pseudonym: string;

  @Field(() => String)
  email: string;

  @Field(() => String)
  password: string;

  @Field(() => String)
  phoneNumber: string;

  @Field(() => String)
  picture: string;

  @Field(() => Date)
  createdAt: Date;

  @Field(() => RoleEntity)
  role: RoleEntity;

  @Field(() => Date)
  updatedAt: Date;

  @Field(() => String)
  userStatus: string;
}
