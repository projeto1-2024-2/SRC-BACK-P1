import { Args, Mutation, Resolver } from '@nestjs/graphql';
import { EstablishmentEntity } from './entities/establishment.entity';
import { CreateEstablishmentInput } from '../establishment/dto/create-establishment.input';
import { UseGuards } from '@nestjs/common';
import { JwtAuthGuard } from 'src/auth/guards/jwt-auth.guard';
import { ReturnEstablishmentDto } from '../establishment/dto/return-establishment-dto';
import { EstablishmentService } from './establishment.service';

@Resolver(() => EstablishmentEntity)
@UseGuards(JwtAuthGuard)
export class EstablishmentResolver {
  constructor(private readonly establishmentService: EstablishmentService) {}

  @Mutation(() => EstablishmentEntity, { name: 'createEstablishment' })
  async create(
    @Args('data') data: CreateEstablishmentInput,
  ): Promise<ReturnEstablishmentDto> {
    return await this.establishmentService.create(data);
  }
}
