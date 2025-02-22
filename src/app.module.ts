import { Module } from '@nestjs/common';
import { GraphQLModule } from '@nestjs/graphql';
import { ApolloDriver, ApolloDriverConfig } from '@nestjs/apollo';
import { join } from 'path';
import { UserModule } from './user/user.module';
import { PrismaModule } from './prisma/prisma.module';
import { AuthModule } from './auth/auth.module';
import { ProductModule } from './product/product.module';
import { AddressModule } from './address/address.module';

@Module({
  imports: [
    GraphQLModule.forRoot<ApolloDriverConfig>({
      driver: ApolloDriver,
      autoSchemaFile: join(process.cwd(), 'graphql/schema.gql'),
      sortSchema: true,
      playground: process.env.ENV === 'dev',
      useGlobalPrefix: true,
      path: '/graphql',
    }),
    UserModule,
    PrismaModule,
    AuthModule,
    ProductModule,
    AddressModule,
  ],
  controllers: [],
  providers: [],
})
export class AppModule {}
