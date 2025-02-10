import { Module } from '@nestjs/common';
import { ProductService } from './product.service';
import { ProductResolver } from './product.resolver';
import { PrismaModule } from 'src/prisma/prisma.module';

@Module({
  providers: [ProductService, ProductResolver],
  imports: [PrismaModule],
  exports: [ProductService],
})
export class ProductModule {}
