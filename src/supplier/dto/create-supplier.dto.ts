import { InputType, Field } from '@nestjs/graphql';
import { IsNotEmpty, IsString } from 'class-validator';

@InputType()
export class CreateSupplierInput {
  @Field(() => String)
  @IsNotEmpty()
  @IsString()
  taxId!: string;
}
