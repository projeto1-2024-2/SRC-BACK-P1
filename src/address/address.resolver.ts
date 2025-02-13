import { UseGuards } from '@nestjs/common';
import { Args, Mutation, Query, Resolver } from '@nestjs/graphql';
import { GqlAuthGuard } from 'src/auth/guards/auth.guard';
import { AddressService } from './address.service';
import { AddressEntity } from './entities/address.entity';
import { CreateAddressInput } from './dto/create-address.input';
import { UpdateAddressInput } from './dto/update-address.input';
import { CurrentUser } from 'src/auth/decorators/current-user.decorator';
import { UserEntity } from 'src/user/entities/user.entity';

@Resolver()
@UseGuards(GqlAuthGuard)
export class AddressResolver {
  constructor(private readonly addressService: AddressService) {}

  @Mutation(() => AddressEntity, { name: 'registerAddress' })
  async registerAddress(@Args('data') data: CreateAddressInput) {
    return this.addressService.create(data);
  }

  @Mutation(() => AddressEntity, { name: 'updateAddress' })
  async updateAddress(@Args('data') data: UpdateAddressInput) {
    return this.addressService.update(data);
  }

  @Query(() => AddressEntity, { name: 'getAddress' })
  async getAddress(@CurrentUser() user: UserEntity) {
    return this.addressService.get(user);
  }
}
