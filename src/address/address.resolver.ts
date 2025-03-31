import { UseGuards } from '@nestjs/common';
import { Args, Mutation, Query, Resolver } from '@nestjs/graphql';
import { AddressService } from './address.service';
import { AddressEntity } from './entities/address.entity';
import { CreateAddressInput } from './dto/create-address.input';
import { UpdateAddressInput } from './dto/update-address.input';
import { CurrentUser } from '../auth/decorators/current-user.decorator';
import { UserEntity } from '../user/entities/user.entity';
import { JwtAuthGuard } from '../auth/guards/jwt-auth.guard';

@Resolver()
@UseGuards(JwtAuthGuard)
export class AddressResolver {
  constructor(private readonly addressService: AddressService) {}

  @Mutation(() => AddressEntity, { name: 'createAddress' })
  async createAddress(
    @CurrentUser() user: UserEntity,
    @Args('data') data: CreateAddressInput,
  ) {
    return this.addressService.create(user, data);
  }

  @Mutation(() => AddressEntity, { name: 'updateAddress' })
  async updateAddress(
    @CurrentUser() user: UserEntity,
    @Args('data') data: UpdateAddressInput,
  ) {
    return this.addressService.update(user, data);
  }

  @Query(() => AddressEntity, { name: 'getAddress' })
  async getAddress(@CurrentUser() user: UserEntity) {
    return this.addressService.get(user);
  }
}
