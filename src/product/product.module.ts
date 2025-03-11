import { forwardRef, Module } from '@nestjs/common';
import { ProductService } from './product.service';
import { ProductResolver } from './product.resolver';
import { PrismaModule } from 'src/prisma/prisma.module';
import { EstablishmentModule } from 'src/establishment/establishment.module';
import { SearchModule } from 'src/search/search.module';

@Module({
  providers: [ProductService, ProductResolver],
  imports: [PrismaModule, forwardRef(() => SearchModule), EstablishmentModule],
  exports: [ProductService],
})
export class ProductModule {}
