import { ObjectType, Field, ID } from '@nestjs/graphql';
import { SupplierCount } from 'src/shared/prismagraphql/prisma';
import { product } from 'src/shared/prismagraphql/product';
import { supplier as SupplierPrisma } from 'src/shared/prismagraphql/supplier';
import { supplierEstablishment } from 'src/shared/prismagraphql/supplier-establishment';
import { user } from 'src/shared/prismagraphql/user';

@ObjectType()
export class SupplierEntity implements SupplierPrisma {
  @Field(() => ID)
  id: string;

  @Field(() => String)
  userId: string;

  @Field(() => String)
  taxId: string;

  @Field(() => [supplierEstablishment], { nullable: true })
  establishments?: supplierEstablishment[];

  @Field(() => [product], { nullable: true })
  products?: product[];

  @Field(() => user, { nullable: true })
  user?: user;

  @Field(() => Date)
  createdAt: Date;

  @Field(() => Date)
  updatedAt: Date;

  @Field(() => SupplierCount, { nullable: true })
  _count?: SupplierCount;
}
