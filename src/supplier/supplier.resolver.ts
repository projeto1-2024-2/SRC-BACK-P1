import { Args, Mutation, Resolver } from '@nestjs/graphql';
import { Supplier } from 'src/shared/prismagraphql/supplier';
import { SupplierService } from './supplier.service';
import { CreateSupplierInput } from './dto/create-supplier.dto';
import { IsPublicRoute } from 'src/auth/decorators/is-public-route.decorator';

@Resolver()
// @UseGuards(JwtAuthGuard)
@IsPublicRoute()
export class SupplierResolver {
  constructor(private supplierService: SupplierService) {}

  // @Roles('CONSUMER')
  @Mutation(() => Supplier, { name: 'createSupplier' })
  async createSupplier(
    @Args('userId') userId: string,
    @Args('data') data: CreateSupplierInput,
  ): Promise<Supplier> {
    return this.supplierService.create(data, userId);
  }
}
