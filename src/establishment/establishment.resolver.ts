import { Args, Mutation, Query, Resolver } from '@nestjs/graphql';
import { EstablishmentEntity } from './entities/establishment.entity';
import { CreateEstablishmentInput } from './dto/create-establishment.input';
import { EstablishmentService } from './establishment.service';
import { IsPublicRoute } from '../auth/decorators/is-public-route.decorator';
import { JwtAuthGuard } from '../auth/guards/jwt-auth.guard';
import { UseGuards } from '@nestjs/common';
import { UpdateFullItensEstablishmentInput } from './dto/update-establishment.input';
import { PaginationInput } from '../pagination/pagination.input';
import { PaginatedEstablishment } from './dto/paginated-establishment.input';

@Resolver(() => EstablishmentEntity)
@UseGuards(JwtAuthGuard)
export class EstablishmentResolver {
  constructor(private readonly establishmentService: EstablishmentService) {}

  @IsPublicRoute()
  @Mutation(() => EstablishmentEntity, { name: 'createEstablishment' })
  async create(
    @Args('data') data: CreateEstablishmentInput,
  ): Promise<EstablishmentEntity> {
    return await this.establishmentService.create(data);
  }

  @Mutation(() => EstablishmentEntity, { name: 'updateEstablishment' })
  async update(
    @Args('data') data: UpdateFullItensEstablishmentInput,
  ): Promise<EstablishmentEntity> {
    return await this.establishmentService.update(data);
  }

  @Mutation(() => EstablishmentEntity, { name: 'addingProductEstablishment' })
  async addingProduct(
    @Args('establishmentId') establishmentId: string,
    @Args('productsId', { type: () => [String] }) productsId: string[],
  ): Promise<EstablishmentEntity> {
    return await this.establishmentService.addingProducts(
      establishmentId,
      productsId,
    );
  }

  @Mutation(() => EstablishmentEntity, { name: 'removeProductEstablishment' })
  async deleteProduct(
    @Args('establishmentId') establishmentId: string,
    @Args('productsId', { type: () => [String] }) productsId: [string],
  ): Promise<EstablishmentEntity> {
    return await this.establishmentService.removeProducts(
      establishmentId,
      productsId,
    );
  }

  @IsPublicRoute()
  @Query(() => EstablishmentEntity, { name: 'findEstablishmentById' })
  async findById(@Args('id') id: string): Promise<EstablishmentEntity> {
    return await this.establishmentService.findById(id);
  }

  @IsPublicRoute()
  @Query(() => [EstablishmentEntity], { name: 'findAllEstablishments' })
  async findAll(
    @Args('pagination', { nullable: true }) pagination: PaginationInput,
  ): Promise<PaginatedEstablishment> {
    return await this.establishmentService.findAll(pagination);
  }

  @Mutation(() => String, { name: 'deleteEstablishment' })
  async delete(@Args('id') id: string): Promise<string> {
    return await this.establishmentService.delete(id);
  }
}
