import { Args, Resolver, Query } from '@nestjs/graphql';
import { GeolocationService } from './geolocation.service';
import { ObjectType, Field, ID, Int } from '@nestjs/graphql';
import type { Decimal } from '@prisma/client/runtime/library';
import { UseGuards } from '@nestjs/common';
import { JwtAuthGuard } from 'src/auth/guards/jwt-auth.guard';

@ObjectType()
class EstablishmentDistanceType {
  @Field(() => ID)
  establishmentId: string;

  @Field(() => String)
  distance: string;
}

@Resolver(() => EstablishmentDistanceType)
@UseGuards(JwtAuthGuard)
export class GeolocationResolver {
  constructor(private readonly geolocationService: GeolocationService) {}

  @Query(() => [EstablishmentDistanceType], { name: 'geolocation' })
  async getGeolocation(
    @Args('latitude', { type: () => Number }) latitude: number,
    @Args('longitude', { type: () => Number }) longitude: number,
    @Args('establishmentIds', { type: () => [ID] })
    establishmentIds: string[],
  ): Promise<EstablishmentDistanceType[]> {
    return this.geolocationService.geolocation(
      { latitude, longitude },
      establishmentIds,
    );
  }
}
