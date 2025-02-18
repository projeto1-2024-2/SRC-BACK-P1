import { ObjectType, Field, ID } from '@nestjs/graphql';
import { Supplier as SupplierPrisma } from 'src/shared/prismagraphql/supplier';

@ObjectType()
export class SupplierEntity implements SupplierPrisma {
  @Field(() => ID)
  id: string;

  @Field(() => String)
  userId: string;

  @Field(() => String)
  taxId: string;

  @Field(() => Date)
  createdAt: Date;
}
