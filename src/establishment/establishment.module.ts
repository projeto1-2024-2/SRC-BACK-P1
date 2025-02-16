import { Module } from '@nestjs/common';
import { EstablishmentResolver } from './establishment.resolver';
import { EstablishmentService } from './establishment.service';

@Module({
  providers: [EstablishmentResolver, EstablishmentService],
})
export class EstablishmentModule {}
