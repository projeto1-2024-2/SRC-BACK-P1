import { Module } from '@nestjs/common';
import { GeolocationResolver } from './geolocation.resolver';
import { GeolocationService } from './geolocation.service';

@Module({
  providers: [GeolocationResolver, GeolocationService],
})
export class GeolocationModule {}
