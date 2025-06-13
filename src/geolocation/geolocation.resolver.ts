import { Args, Resolver, Query } from '@nestjs/graphql';
import { GeolocationService } from './geolocation.service';
import { UseGuards } from '@nestjs/common';
import { JwtAuthGuard } from '../auth/guards/jwt-auth.guard';
import { CurrentUser } from 'src/auth/decorators/current-user.decorator';
import { Roles } from 'src/user/decorators';
import { UserEntity } from 'src/user/entities/user.entity';

@Resolver()
@UseGuards(JwtAuthGuard)
export class GeolocationResolver {
  constructor(private readonly geolocationService: GeolocationService) {}

  @Roles('CONSUMER')
  @Query(() => Number, { name: 'geolocation' })
  async getGeolocation(
    @CurrentUser() user: UserEntity,
    @Args('establishmentId') establishmentId: string,
  ): Promise<number> {
    return await this.geolocationService.geolocation(user, establishmentId);
  }
}
