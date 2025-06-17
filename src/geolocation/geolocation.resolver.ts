import { Args, Resolver, Query } from '@nestjs/graphql';
import { GeolocationService } from './geolocation.service';
import { UseGuards } from '@nestjs/common';
import { JwtAuthGuard } from '../auth/guards/jwt-auth.guard';
import { Roles } from 'src/user/decorators';
import { CurrentUser } from 'src/auth/decorators/current-user.decorator';
import { InputType, Field, ID, ObjectType } from '@nestjs/graphql';

@InputType()
class UserGeoInput {
  @Field()
  latitude: number;

  @Field()
  longitude: number;
}

@ObjectType()
class EstablishmentDistanceType {
  @Field(() => ID)
  establishmentId: string;

  @Field()
  distance: number;
}

@Resolver()
export class GeolocationResolver {
  constructor(private readonly geolocationService: GeolocationService) {}

  @Query(() => [EstablishmentDistanceType], { name: 'geolocation' })
  async getGeolocation(
    @Args('userGeo') userGeo: UserGeoInput,
    @Args('establishmentIds', { type: () => [ID] })
    establishmentIds: string[],
  ): Promise<EstablishmentDistanceType[]> {
    return this.geolocationService.geolocation(
      { latitude: userGeo.latitude, longitude: userGeo.longitude },
      establishmentIds,
    );
  }
}