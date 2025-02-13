import { Module } from '@nestjs/common';
import { UserService } from './user.service';
import { UserResolver } from './resolvers/user.resolver';
import { PrismaModule } from 'src/prisma/prisma.module';
import { PasswordService } from 'src/auth/services/password.service';
import { AdminResolver } from './resolvers/admin-user.resolver';

@Module({
  providers: [UserResolver, UserService, PasswordService, AdminResolver],
  imports: [PrismaModule],
  exports: [UserService],
})
export class UserModule {}
