import { Field, ID, ObjectType } from '@nestjs/graphql';
import { User as UserPrisma } from '@prisma/client';
import { Role } from '@prisma/client';

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
  image: Buffer;

  @Field(() => Date)
  createdAt: Date;

  @Field(() => Date)
  updatedAt: Date;

  @Field(() => String)
  addressId: string;

  @Field(() => String, { defaultValue: Role.CONSUMER })
  role: Role;
}
