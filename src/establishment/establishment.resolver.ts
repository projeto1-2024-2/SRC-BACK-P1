import { Args, Mutation, Query, Resolver } from '@nestjs/graphql';
import { EstablishmentEntity } from './entities/establishment.entity';
import { CreateEstablishmentInput } from './dto/input/create_full_itens-establishment.input';
import { EstablishmentService } from './establishment.service';
import { IsPublicRoute } from 'src/auth/decorators/is-public-route.decorator';
import { JwtAuthGuard } from 'src/auth/guards/jwt-auth.guard';
import { UseGuards } from '@nestjs/common';

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

  //TODO: REFAZER UPDATE

  @Mutation(() => Boolean, { name: 'deleteEstablishment' })
  async delete(@Args('id') id: string): Promise<boolean> {
    return await this.establishmentService.delete(id);
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
