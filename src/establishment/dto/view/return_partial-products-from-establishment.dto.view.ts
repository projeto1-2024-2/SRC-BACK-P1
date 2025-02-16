import { EstablishmentEntity } from 'src/establishment/entities/establishment.entity';
import { Product } from 'src/shared/prismagraphql/product';

export class ReturnPartialProductsFromEstablishmentDto {
  id!: string;
  name!: string;
  products!: Product[];

  constructor(establishment: EstablishmentEntity) {
    this.id = establishment.id;
    this.name = establishment.name;
    this.products = establishment.products ?? [];
  }
}
