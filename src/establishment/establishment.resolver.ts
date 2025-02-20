import { Args, Mutation, Query, Resolver } from '@nestjs/graphql';
import { EstablishmentEntity } from './entities/establishment.entity';
import { CreateEstablishmentInput } from './dto/input/create_full_itens-establishment.input';
import { EstablishmentService } from './establishment.service';
import { UpdatePartialEstablishmentInput } from './dto/input/update_partial-establishment.input';
import { UpdatePartialProductsEstablishmentInput } from './dto/input/update_partial-establishment-products.input';
import { ReturnPartialProductsFromEstablishmentDto } from './dto/view/return_partial-products-from-establishment.dto.view';
import { ReturnPartialAddressFromEstablishmentDto } from './dto/view/return_partial-address-from-establishment.dto.view';
import { UpdateFullItensEstablishmentInput } from './dto/input/update_full_itens-establishment.input';
import { IsPublicRoute } from 'src/auth/decorators/is-public-route.decorator';
import { UseGuards } from '@nestjs/common/decorators';
import { JwtAuthGuard } from 'src/auth/guards/jwt-auth.guard';
import { Roles } from 'src/user/decorators';
import { UserEntity } from 'src/user/entities/user.entity';
import { CurrentUser } from 'src/auth/decorators/current-user.decorator';
import { UpdatePartialAddressEstablishmentInput } from './dto/input/update_partial-establishment-address.input';

@Resolver(() => EstablishmentEntity)
@UseGuards(JwtAuthGuard)
export class EstablishmentResolver {
  constructor(private readonly establishmentService: EstablishmentService) {}

  @Roles('SUPPLIER')
  @Mutation(() => EstablishmentEntity, { name: 'createEstablishment' })
  async create(
    @CurrentUser() user: UserEntity,
    @Args('data') data: CreateEstablishmentInput,
  ): Promise<EstablishmentEntity> {
    return await this.establishmentService.create(data, user);
  }

  @Roles('SUPPLIER')
  @Mutation(() => EstablishmentEntity, { name: 'updateEstablishment' })
  async update(
    @CurrentUser() user: UserEntity,
    @Args('data') data: UpdateFullItensEstablishmentInput,
  ): Promise<EstablishmentEntity> {
    return await this.establishmentService.update(data, user);
  }

  @Roles('SUPPLIER')
  @Mutation(() => EstablishmentEntity, { name: 'updatePartialEstablishment' })
  async updatePartial(
    @CurrentUser() user: UserEntity,
    @Args('data') data: UpdatePartialEstablishmentInput,
  ): Promise<EstablishmentEntity> {
    return await this.establishmentService.updatePartial(data, user);
  }

  @Roles('SUPPLIER')
  @Mutation(() => EstablishmentEntity, { name: 'updateEstablishmentProducts' })
  async updateProducts(
    @CurrentUser() user: UserEntity,
    @Args('data') data: UpdatePartialProductsEstablishmentInput,
  ): Promise<ReturnPartialProductsFromEstablishmentDto> {
    return await this.establishmentService.updateProducts(data, user);
  }

  @Roles('SUPPLIER')
  @Mutation(() => EstablishmentEntity, { name: 'updateEstablishmentAddress' })
  async updateAddress(
    @CurrentUser() user: UserEntity,
    @Args('data') data: UpdatePartialAddressEstablishmentInput,
  ): Promise<ReturnPartialAddressFromEstablishmentDto> {
    return await this.establishmentService.updateAddress(data, user);
  }

  @Roles('SUPPLIER')
  @Mutation(() => Boolean, { name: 'deleteEstablishment' })
  async delete(
    @Args('id') id: string,
    @CurrentUser() user: UserEntity,
  ): Promise<boolean> {
    await this.establishmentService.delete(id, user);
    return true;
  }

  @IsPublicRoute()
  @Query(() => EstablishmentEntity, { name: 'findEstablishmentById' })
  async findById(@Args('id') id: string): Promise<EstablishmentEntity> {
    return await this.establishmentService.findById(id);
  }

  @IsPublicRoute()
  @Query(() => [EstablishmentEntity], { name: 'findAllEstablishments' })
  async findAll(): Promise<EstablishmentEntity[]> {
    return await this.establishmentService.findAll();
  }

  @IsPublicRoute()
  @Query(() => ReturnPartialProductsFromEstablishmentDto, {
    name: 'fetchProductsByEstablishmentId',
  })
  async fetchProductsByEstablishmentId(
    @Args('id') id: string,
  ): Promise<ReturnPartialProductsFromEstablishmentDto> {
    return await this.establishmentService.fetchProductsByEstablishmentId(id);
  }

  @IsPublicRoute()
  @Query(() => [ReturnPartialProductsFromEstablishmentDto], {
    name: 'fetchProductsAll',
  })
  async fetchProductsAllByEsyablishmentId(): Promise<
    ReturnPartialProductsFromEstablishmentDto[]
  > {
    return await this.establishmentService.fetchProductsAll();
  }
}
