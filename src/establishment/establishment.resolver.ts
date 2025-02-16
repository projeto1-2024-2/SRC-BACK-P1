import { Args, Mutation, Query, Resolver } from '@nestjs/graphql';
import { EstablishmentEntity } from './entities/establishment.entity';
import { CreateEstablishmentInput } from './dto/input/create_full_itens-establishment.input';
import { UseGuards } from '@nestjs/common';
import { JwtAuthGuard } from 'src/auth/guards/jwt-auth.guard';
import { EstablishmentService } from './establishment.service';
import { ReturnFullItensEstablishmentDto } from './dto/view/return_full_itens-establishment-dto.view';
import { UpdatePartialEstablishmentInput } from './dto/input/update_partial-establishment.input';
import { UpdatePartialProductsEstablishmentInput } from './dto/input/update_partial-establishment-products.input';
import { ReturnPartialProductsFromEstablishmentDto } from './dto/view/return_partial-products-from-establishment.dto.view';
import { UpdateAddressInput } from 'src/address/dto/update-address.input';
import { ReturnPartialAddressFromEstablishmentDto } from './dto/view/return_partial-address-from-establishment.dto.view';
import { UpdateFullItensEstablishmentInput } from './dto/input/update_full_itens-establishment.input';

@Resolver(() => EstablishmentEntity)
@UseGuards(JwtAuthGuard)
export class EstablishmentResolver {
  constructor(private readonly establishmentService: EstablishmentService) {}

  @Mutation(() => EstablishmentEntity, { name: 'createEstablishment' })
  async create(
    @Args('data') data: CreateEstablishmentInput,
  ): Promise<ReturnFullItensEstablishmentDto> {
    return await this.establishmentService.create(data);
  }

  @Mutation(() => EstablishmentEntity, { name: 'updateEstablishment' })
  async update(
    @Args('data') data: UpdateFullItensEstablishmentInput,
  ): Promise<ReturnFullItensEstablishmentDto> {
    return await this.establishmentService.update(data);
  }
  @Mutation(() => EstablishmentEntity, { name: 'updatePartialEstablishment' })
  async updatePartial(
    @Args('data') data: UpdatePartialEstablishmentInput,
  ): Promise<ReturnFullItensEstablishmentDto> {
    return await this.establishmentService.updatePartial(data);
  }

  @Mutation(() => EstablishmentEntity, { name: 'updateEstablishmentProducts' })
  async updateProducts(
    @Args('data') data: UpdatePartialProductsEstablishmentInput,
  ): Promise<ReturnPartialProductsFromEstablishmentDto> {
    return await this.establishmentService.updateProducts(data);
  }

  @Mutation(() => EstablishmentEntity, { name: 'updateEstablishmentAddress' })
  async updateAddress(
    @Args('data') data: UpdateAddressInput,
  ): Promise<ReturnPartialAddressFromEstablishmentDto> {
    return await this.establishmentService.updateAddress(data);
  }

  @Mutation(() => Boolean, { name: 'deleteEstablishment' })
  async delete(@Args('id') id: string): Promise<boolean> {
    await this.establishmentService.delete(id);
    return true;
  }

  @Query(() => EstablishmentEntity, { name: 'findEstablishmentById' })
  async findById(
    @Args('id') id: string,
  ): Promise<ReturnFullItensEstablishmentDto> {
    return await this.establishmentService.findById(id);
  }

  @Query(() => [EstablishmentEntity], { name: 'findAllEstablishments' })
  async findAll(): Promise<ReturnFullItensEstablishmentDto[]> {
    return await this.establishmentService.findAll();
  }

  @Query(() => ReturnPartialProductsFromEstablishmentDto, {
    name: 'fetchProductsByEstablishmentId',
  })
  async fetchProductsByEstablishmentId(
    @Args('id') id: string,
  ): Promise<ReturnPartialProductsFromEstablishmentDto> {
    return await this.establishmentService.fetchProductsByEstablishmentId(id);
  }

  @Query(() => ReturnPartialProductsFromEstablishmentDto, {
    name: 'fetchProductsAllByEsyablishmentId',
  })
  async fetchProductsAllByEsyablishmentId(): Promise<
    ReturnPartialProductsFromEstablishmentDto[]
  > {
    return await this.establishmentService.fetchProductsAllByEsyablishmentId();
  }
}
