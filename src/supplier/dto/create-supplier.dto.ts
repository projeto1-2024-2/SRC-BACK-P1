import { InputType, Field, OmitType } from '@nestjs/graphql';
import { IsString, IsUUID } from 'class-validator';
import { SupplierEntity } from '../entities/supplier.entity';

@InputType('CreateSupplierInput')
export class CreateSupplierInput extends OmitType(SupplierEntity, ['id']) {
  @Field(() => String)
  @IsUUID()
  userId: string;

  @Field(() => String)
  @IsString()
  taxId: string;
}
