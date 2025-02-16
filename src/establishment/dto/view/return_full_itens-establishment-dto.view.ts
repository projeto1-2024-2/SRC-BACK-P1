import { Supplier } from 'src/shared/prismagraphql/supplier';
import { Address } from '@prisma/client';
import { EstablishmentCount } from 'src/shared/prismagraphql/establishment';
import { Product } from 'src/shared/prismagraphql/product';
import { EstablishmentEntity } from 'src/establishment/entities/establishment.entity';

export class ReturnFullItensEstablishmentDto {
  id!: string;
  name!: string;
  openingHours!: Date;
  closingHours!: Date;
  commercialPhone!: string;
  taxId!: string;
  addressId!: string;
  products!: Product[];
  supplier!: Supplier[];
  address!: Address;
  _count!: EstablishmentCount;
  createAt!: Date;
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
