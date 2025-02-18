import { Module } from '@nestjs/common';
import { GraphQLModule } from '@nestjs/graphql';
import { ApolloDriver, ApolloDriverConfig } from '@nestjs/apollo';
import { join } from 'path';
import { UserModule } from './user/user.module';
import { PrismaModule } from './prisma/prisma.module';
import { AuthModule } from './auth/auth.module';
import { ProductModule } from './product/product.module';
import { AddressModule } from './address/address.module';
import { EstablishmentModule } from './establishment/establishment.module';
import { SupplierModule } from './supplier/supplier.module';

@Module({
  imports: [
    GraphQLModule.forRoot<ApolloDriverConfig>({
      driver: ApolloDriver,
      autoSchemaFile: join(process.cwd(), 'graphql/schema.gql'),
      sortSchema: true,
      playground: process.env.ENV === 'dev',
    }),
    UserModule,
    PrismaModule,
    AuthModule,
    ProductModule,
    AddressModule,
    EstablishmentModule,
    SupplierModule,
  ],
  controllers: [],
  providers: [],
})
export class AppModule {}
