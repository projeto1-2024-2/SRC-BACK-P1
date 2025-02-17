import { ObjectType, Field } from '@nestjs/graphql';
import { Supplier } from 'src/shared/prismagraphql/supplier';
import { EstablishmentCount } from 'src/shared/prismagraphql/establishment';
import { Product } from 'src/shared/prismagraphql/product';
import { EstablishmentEntity } from 'src/establishment/entities/establishment.entity';
import { Address } from 'src/shared/prismagraphql/address';
import { GraphQLJSONObject } from 'graphql-type-json';

@ObjectType('ReturnFullItensEstablishmentDto')
export class ReturnFullItensEstablishmentDto {
  @Field()
  id!: string;

  @Field()
  name!: string;

  @Field(() => Date)
  openingHours!: Date;

  @Field(() => Date)
  closingHours!: Date;

  @Field()
  commercialPhone!: string;

  @Field()
  taxId!: string;

  @Field()
  addressId!: string;

  @Field(() => [GraphQLJSONObject])
  products!: Product[];

  @Field(() => [GraphQLJSONObject])
  supplier!: Supplier[];

  @Field(() => GraphQLJSONObject, { nullable: true })
  address!: Address;

  @Field(() => GraphQLJSONObject, { nullable: true })
  _count!: EstablishmentCount;

  @Field(() => Date)
  createAt!: Date;

  @Field(() => Date)
  updateAt!: Date;

  constructor(establishmentEntity: EstablishmentEntity) {
    this.id = establishmentEntity.id;
    this.name = establishmentEntity.name;
    this.openingHours = establishmentEntity.openingHours;
    this.closingHours = establishmentEntity.closingHours;
    this.commercialPhone = establishmentEntity.commercialPhone;
    this.taxId = establishmentEntity.taxId;
    this.addressId = establishmentEntity.addressId;
    this.products = establishmentEntity.products ?? [];
    this.supplier = establishmentEntity.supplier ?? [];
    this.address = establishmentEntity.address ?? undefined;
    this._count = establishmentEntity._count ?? undefined;
    this.createAt = establishmentEntity.createdAt;
    this.updateAt = establishmentEntity.updatedAt;
  }
}
