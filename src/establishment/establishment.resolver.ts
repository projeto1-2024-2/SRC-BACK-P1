import { Args, Mutation, Query, Resolver } from '@nestjs/graphql';
import { EstablishmentEntity } from './entities/establishment.entity';
import { CreateEstablishmentInput } from './dto/input/create_full_itens-establishment.input';
import { EstablishmentService } from './establishment.service';
import { IsPublicRoute } from 'src/auth/decorators/is-public-route.decorator';
import { JwtAuthGuard } from 'src/auth/guards/jwt-auth.guard';
import { UseGuards } from '@nestjs/common';
import { UpdatePartialEstablishmentInput } from './dto/input/update_partial-establishment.input';
import { UpdateFullItensEstablishmentInput } from './dto/input/update_full_itens-establishment.input';
import { Roles } from 'src/user/decorators';
import { UserEntity } from 'src/user/entities/user.entity';
import { CurrentUser } from 'src/auth/decorators/current-user.decorator';

@Resolver(() => EstablishmentEntity)
@UseGuards(JwtAuthGuard)
export class EstablishmentResolver {
  constructor(private readonly establishmentService: EstablishmentService) {}

  @IsPublicRoute()
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
  @Mutation(() => Boolean, { name: 'deleteEstablishment' })
  async delete(
    @Args('id') id: string,
    @CurrentUser() user: UserEntity,
  ): Promise<boolean> {
    return await this.establishmentService.delete(id, user);
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
}
