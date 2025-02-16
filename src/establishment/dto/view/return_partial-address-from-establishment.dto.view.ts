import { EstablishmentEntity } from 'src/establishment/entities/establishment.entity';
import { Address } from 'src/shared/prismagraphql/address';

export class ReturnPartialAddressFromEstablishmentDto {
  id!: string;
  name!: string;
  address!: Address;

  constructor(establishment: EstablishmentEntity) {
    this.id = establishment.id;
    this.name = establishment.name;
    this.address = establishment.address;
  }
}
