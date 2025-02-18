import { Module } from '@nestjs/common';
import { EstablishmentResolver } from './establishment.resolver';
import { EstablishmentService } from './establishment.service';
import { UserModule } from 'src/user/user.module';

@Module({
  imports: [UserModule],
  providers: [EstablishmentResolver, EstablishmentService],
})
export class EstablishmentModule {}
