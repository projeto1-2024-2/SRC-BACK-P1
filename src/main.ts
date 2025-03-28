import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { graphqlUploadExpress } from 'graphql-upload-ts';

async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  app.setGlobalPrefix('api');
  app.enableCors({
    allowedHeaders: '*',
    origin: 'http://localhost:****',
    credentials: true,
  });
  app.use(
    graphqlUploadExpress({
      maxFileSize: 1000000,
      maxFiles: 5,
      overrideSendResponse: false,
    }),
  );
  await app.listen(process.env.API_INTERNAL_PORT);
}
bootstrap();
