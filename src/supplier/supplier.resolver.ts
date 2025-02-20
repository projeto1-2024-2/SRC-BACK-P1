import { Args, Mutation, Query, Resolver } from '@nestjs/graphql';
import { Supplier } from 'src/shared/prismagraphql/supplier';
import { SupplierService } from './supplier.service';
import { CreateSupplierInput } from './dto/create-supplier.dto';
import { JwtAuthGuard } from 'src/auth/guards/jwt-auth.guard';
import { Roles } from 'src/user/decorators';
import { UseGuards } from '@nestjs/common/decorators';
import { UserEntity } from 'src/user/entities/user.entity';
import { CurrentUser } from 'src/auth/decorators/current-user.decorator';

@Resolver(() => Supplier)
@UseGuards(JwtAuthGuard)
export class SupplierResolver {
  constructor(private supplierService: SupplierService) {}

  @Roles('CONSUMER')
  @Mutation(() => Supplier, { name: 'createSupplier' })
  async createSupplier(
    @CurrentUser() user: UserEntity,
    @Args('data') data: CreateSupplierInput,
  ): Promise<Supplier> {
    return this.supplierService.create(data, user);
  }

  @Query(() => Supplier, { name: 'findSupplierById', nullable: true })
  async findById(@Args('id') id: string): Promise<Supplier | null> {
    return this.supplierService.findById(id);
  }

  @Query(() => [Supplier], { name: 'findAllSuppliers' })
  async findAll(): Promise<Supplier[]> {
    return this.supplierService.findAll();
  }

  @Roles('SUPPLIER')
  @Mutation(() => Boolean, { name: 'deleteSupplier' })
  async delete(@Args('supplierId') supplierId: string): Promise<boolean> {
    return this.supplierService.delete(supplierId);
  }
}
