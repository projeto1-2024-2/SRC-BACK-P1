import { Args, Mutation, Query, Resolver } from '@nestjs/graphql';
import { EstablishmentEntity } from './entities/establishment.entity';
import { CreateEstablishmentInput } from './dto/input/create_full_itens-establishment.input';
import { EstablishmentService } from './establishment.service';
import { UpdatePartialEstablishmentInput } from './dto/input/update_partial-establishment.input';
import { UpdatePartialProductsEstablishmentInput } from './dto/input/update_partial-establishment-products.input';
import { ReturnPartialProductsFromEstablishmentDto } from './dto/view/return_partial-products-from-establishment.dto.view';
import { UpdateAddressInput } from 'src/address/dto/update-address.input';
import { ReturnPartialAddressFromEstablishmentDto } from './dto/view/return_partial-address-from-establishment.dto.view';
import { UpdateFullItensEstablishmentInput } from './dto/input/update_full_itens-establishment.input';
import { IsPublicRoute } from 'src/auth/decorators/is-public-route.decorator';
import { CreateAddressInput } from 'src/address/dto/create-address.input';

@Resolver(() => EstablishmentEntity)
// @UseGuards(JwtAuthGuard)
export class EstablishmentResolver {
  constructor(private readonly establishmentService: EstablishmentService) {}

  @IsPublicRoute()
  // @UseGuards(JwtAuthGuard)
  // @Roles('SUPPLIER')
  @Mutation(() => EstablishmentEntity, { name: 'createEstablishment' })
  async create(
    @Args('userId') userId: string,
    @Args('data') data: CreateEstablishmentInput,
    @Args('addressData') addressData: CreateAddressInput,
  ): Promise<EstablishmentEntity> {
    return await this.establishmentService.create(data, addressData, userId);
  }

  @IsPublicRoute()
  @Mutation(() => EstablishmentEntity, { name: 'updateEstablishment' })
  async update(
    @Args('userId') userId: string,
    @Args('data') data: UpdateFullItensEstablishmentInput,
  ): Promise<EstablishmentEntity> {
    return await this.establishmentService.update(data, userId);
  }

  @IsPublicRoute()
  @Mutation(() => EstablishmentEntity, { name: 'updatePartialEstablishment' })
  async updatePartial(
    @Args('userId') userId: string,
    @Args('data') data: UpdatePartialEstablishmentInput,
  ): Promise<EstablishmentEntity> {
    return await this.establishmentService.updatePartial(data, userId);
  }

  @IsPublicRoute()
  @Mutation(() => EstablishmentEntity, { name: 'updateEstablishmentProducts' })
  async updateProducts(
    @Args('userId') userId: string,
    @Args('data') data: UpdatePartialProductsEstablishmentInput,
  ): Promise<ReturnPartialProductsFromEstablishmentDto> {
    return await this.establishmentService.updateProducts(data, userId);
  }

  @IsPublicRoute()
  @Mutation(() => EstablishmentEntity, { name: 'updateEstablishmentAddress' })
  async updateAddress(
    @Args('userId') userId: string,
    @Args('data') data: UpdateAddressInput,
    @Args('addressData') addressData: CreateAddressInput,
  ): Promise<ReturnPartialAddressFromEstablishmentDto> {
    return await this.establishmentService.updateAddress(
      data,
      addressData,
      userId,
    );
  }

  @IsPublicRoute()
  @Mutation(() => Boolean, { name: 'deleteEstablishment' })
  async delete(
    @Args('id') id: string,
    @Args('userId') userId: string,
  ): Promise<boolean> {
    await this.establishmentService.delete(id, userId);
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

  @Query(() => [ReturnPartialProductsFromEstablishmentDto], {
    name: 'fetchProductsAllByEsyablishmentId',
  })
  async fetchProductsAllByEsyablishmentId(): Promise<
    ReturnPartialProductsFromEstablishmentDto[]
  > {
    return await this.establishmentService.fetchProductsAllByEsyablishmentId();
  }
}
