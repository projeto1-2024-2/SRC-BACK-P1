import { Args, Mutation, Resolver } from '@nestjs/graphql';
import { supplier } from 'src/shared/prismagraphql/supplier';
import { SupplierService } from './supplier.service';
import { CreateSupplierInput } from './dto/create-supplier.dto';
import { JwtAuthGuard } from 'src/auth/guards/jwt-auth.guard';
import { SupplierEntity } from './entities/supplier.entity';
import { UseGuards } from '@nestjs/common';
import { Roles } from 'src/user/decorators';
import { IsPublicRoute } from 'src/auth/decorators/is-public-route.decorator';

@UseGuards(JwtAuthGuard)
@Roles('SUPPLIER', 'ADMIN')
@Resolver(() => SupplierEntity)
export class SupplierResolver {
  constructor(private supplierService: SupplierService) {}

  @IsPublicRoute()
  @Mutation(() => supplier, { name: 'createSupplier' })
  async createSupplier(
    @Args('userId') userId: string,
    @Args('data') data: CreateSupplierInput,
  ): Promise<supplier> {
    return this.supplierService.create(data, userId);
  }
}
