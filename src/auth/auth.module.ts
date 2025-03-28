import { Module } from '@nestjs/common';
import { AuthService } from './services/auth.service';
import { AuthResolver } from './auth.resolver';
import { PrismaModule } from 'src/prisma/prisma.module';
import { UserModule } from 'src/user/user.module';
import { JwtModule } from '@nestjs/jwt';
import { JwtStrategy } from './strategies/jwt-strategy';
import { PasswordService } from './services/password.service';
import { EstablishmentModule } from 'src/establishment/establishment.module';

@Module({
  imports: [
    UserModule,
    PrismaModule,
    EstablishmentModule,

    JwtModule.register({
      secret: process.env.JWT_SECRET,
      signOptions: { expiresIn: process.env.JWT_EXPIRES_IN },
    }),
  ],
  providers: [AuthResolver, AuthService, JwtStrategy, PasswordService],
  exports: [AuthService, PasswordService],
})
export class AuthModule {}
