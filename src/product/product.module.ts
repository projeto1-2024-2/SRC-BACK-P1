import { Module } from '@nestjs/common';
import { ProductService } from './product.service';
import { ProductResolver } from './product.resolver';
import { PrismaModule } from 'src/prisma/prisma.module';
import { EstablishmentModule } from 'src/establishment/establishment.module';

@Module({
  providers: [ProductService, ProductResolver],
  imports: [PrismaModule, EstablishmentModule],
  exports: [ProductService],
})
export class ProductModule {}
