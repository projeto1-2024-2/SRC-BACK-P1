import { Args, Mutation, Resolver } from '@nestjs/graphql';
import { supplier } from 'src/shared/prismagraphql/supplier';
import { SupplierService } from './supplier.service';
import { CreateSupplierInput } from './dto/create-supplier.dto';
import { IsPublicRoute } from 'src/auth/decorators/is-public-route.decorator';

@Resolver()
// @UseGuards(JwtAuthGuard)
@IsPublicRoute()
export class SupplierResolver {
  constructor(private supplierService: SupplierService) {}

  // @Roles('CONSUMER')
  @Mutation(() => supplier, { name: 'createSupplier' })
  async createSupplier(
    @Args('userId') userId: string,
    @Args('data') data: CreateSupplierInput,
  ): Promise<supplier> {
    return this.supplierService.create(data, userId);
  }
}
