import { Args, Mutation, Resolver } from '@nestjs/graphql';
import { Supplier } from 'src/shared/prismagraphql/supplier';
import { SupplierService } from './supplier.service';
import { CreateSupplierInput } from './dto/create-supplier.dto';
import { IsPublicRoute } from 'src/auth/decorators/is-public-route.decorator';

@Resolver()
export class SupplierResolver {
  constructor(private supplierService: SupplierService) {}

  @IsPublicRoute()
  @Mutation(() => Supplier, { name: 'createSupplier' })
  async createSupplier(
    @Args('userId') userId: string,
    @Args('data') data: CreateSupplierInput,
  ) {
    return this.supplierService.create(data, userId);
  }
}
