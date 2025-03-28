import { forwardRef, Module } from '@nestjs/common';
import { EstablishmentResolver } from './establishment.resolver';
import { EstablishmentService } from './establishment.service';
import { ProductModule } from 'src/product/product.module';

@Module({
  imports: [forwardRef(() => ProductModule)],
  providers: [EstablishmentResolver, EstablishmentService],
  exports: [EstablishmentService],
})
export class EstablishmentModule {}
