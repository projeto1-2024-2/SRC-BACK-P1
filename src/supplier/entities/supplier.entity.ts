import { ObjectType, Field, ID } from '@nestjs/graphql';
import { product } from 'src/shared/prismagraphql/product';
import {
  SupplierCount,
  Supplier as SupplierPrisma,
} from 'src/shared/prismagraphql/supplier';
import { SupplierEstablishment } from 'src/shared/prismagraphql/supplier-establishment';
import { User } from 'src/shared/prismagraphql/user';

@ObjectType()
export class SupplierEntity implements SupplierPrisma {
  @Field(() => ID)
  id: string;

  @Field(() => String)
  userId: string;

  @Field(() => String)
  taxId: string;

  @Field(() => [SupplierEstablishment], { nullable: true })
  establishments?: SupplierEstablishment[];

  @Field(() => [product], { nullable: true })
  products?: product[];

  @Field(() => User, { nullable: true })
  user?: User;

  @Field(() => Date)
  createdAt: Date;

  @Field(() => Date)
  updatedAt: Date;

  @Field(() => SupplierCount, { nullable: true })
  _count?: SupplierCount;
}
