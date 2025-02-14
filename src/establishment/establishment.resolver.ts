import { Args, Mutation, Resolver } from '@nestjs/graphql';
import { EstablishmentEntity } from './entities/establishment.entity';
import { CreateEstablishmentInput } from './dto/create-establishment.input';
import { EstablishmentService } from './establishment.service';

@Resolver()
export class EstablishmentResolver {
  constructor(private readonly establishmentService: EstablishmentService) {}

  @Mutation(() => EstablishmentEntity, { name: 'createEstablishment' })
  async create(@Args('data') data: CreateEstablishmentInput) {
    return await this.establishmentService.create(data);
  }
}
