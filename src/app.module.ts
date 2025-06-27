import { Module, ValidationPipe } from '@nestjs/common';
import { GraphQLModule } from '@nestjs/graphql';
import { ApolloDriver, ApolloDriverConfig } from '@nestjs/apollo';
import { join } from 'path';
import { UserModule } from './user/user.module';
import { PrismaModule } from './prisma/prisma.module';
import { AuthModule } from './auth/auth.module';
import { ProductModule } from './product/product.module';
import { AddressModule } from './address/address.module';
import { EstablishmentModule } from './establishment/establishment.module';
import { SearchModule } from './search/search.module';
import { NlpModule } from './nlp/nlp.module';
import { APP_PIPE } from '@nestjs/core';
import { GeolocationModule } from './geolocation/geolocation.module';
@Module({
  imports: [
    GraphQLModule.forRoot<ApolloDriverConfig>({
      driver: ApolloDriver,
      autoSchemaFile: join(process.cwd(), 'graphql/schema.gql'),
      sortSchema: true,
      playground: process.env.ENV === 'dev',
      useGlobalPrefix: true,
      path: '/graphql',
      csrfPrevention: true,
    }),
    UserModule,
    PrismaModule,
    AuthModule,
    ProductModule,
    AddressModule,
    EstablishmentModule,
    SearchModule,
    NlpModule,
    GeolocationModule,
  ],
  controllers: [],
  providers: [
    {
      provide: APP_PIPE,
      useValue: new ValidationPipe({
        whitelist: true,
        transform: true,
      }),
    },
  ],
})
export class AppModule {}
