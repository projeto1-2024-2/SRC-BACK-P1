import { Global, Module } from '@nestjs/common';
import { PrismaService } from './prisma.service';
import { PrismaSelectService } from './prisma-select.service';

@Global()
@Module({
  providers: [PrismaService, PrismaSelectService],
  exports: [PrismaService, PrismaSelectService],
})
export class PrismaModule {}
