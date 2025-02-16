import { EstablishmentEntity } from '../entities/establishment.entity';
import { Supplier } from 'src/shared/prismagraphql/supplier';
import { Address } from '@prisma/client';
import { EstablishmentCount } from 'src/shared/prismagraphql/establishment';
import { Product } from 'src/shared/prismagraphql/product';

export class ReturnEstablishmentDto {
  name: string;
  operatingHours: Date;
  commercialPhone: string;
  taxId: string;
  addressId: string;
  products?: Product[];
  supplier?: Supplier[];
  address?: Address;
  _count?: EstablishmentCount;

  constructor(establishmentEntity: EstablishmentEntity) {
    this.name = establishmentEntity.name;
    this.operatingHours = establishmentEntity.operatingHours;
    this.commercialPhone = establishmentEntity.commercialPhone;
    this.taxId = establishmentEntity.taxId;
    this.addressId = establishmentEntity.addressId;
    this.products = establishmentEntity.products
      ? establishmentEntity.products
      : undefined;
    this.supplier = establishmentEntity.supplier
      ? establishmentEntity.supplier
      : undefined;
    this.address = establishmentEntity.address;
    this._count = establishmentEntity._count;
  }
}
