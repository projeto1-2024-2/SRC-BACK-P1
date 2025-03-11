import { forwardRef, Module } from '@nestjs/common';
import { EstablishmentResolver } from './establishment.resolver';
import { EstablishmentService } from './establishment.service';
import { UserModule } from 'src/user/user.module';
import { ProductModule } from 'src/product/product.module';

@Module({
  imports: [UserModule, forwardRef(() => ProductModule)],
  providers: [EstablishmentResolver, EstablishmentService],
  exports: [EstablishmentService],
})
export class EstablishmentModule {}
