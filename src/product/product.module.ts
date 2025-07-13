import { forwardRef, Module } from '@nestjs/common';
import { ProductService } from './product.service';
import { ProductResolver } from './product.resolver';
import { PrismaModule } from '../prisma/prisma.module';
import { EstablishmentModule } from '../establishment/establishment.module';
import { SearchModule } from '../search/search.module';

@Module({
  providers: [ProductService, ProductResolver],
  imports: [
    PrismaModule,
    forwardRef(() => SearchModule),
    forwardRef(() => EstablishmentModule),
  ],
  exports: [ProductService],
})
export class ProductModule {}
