import { Field, ID, ObjectType, registerEnumType } from '@nestjs/graphql';
import { user as UserPrisma } from '@prisma/client';
import { Role } from '@prisma/client';
import { Supplier } from 'src/shared/prismagraphql/supplier';

registerEnumType(Role, {
  name: 'Role',
  description: 'User role',
});

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

  @Field(() => String, { nullable: true })
  addressId: string;

  @Field(() => Supplier, { nullable: true })
  supplier: Supplier;

  @Field(() => String)
  role: Role;
}
