import { Args, Mutation, Query, Resolver } from '@nestjs/graphql';
import { Supplier } from 'src/shared/prismagraphql/supplier';
import { SupplierService } from './supplier.service';
import { CreateSupplierInput } from './dto/create-supplier.input';
import { JwtAuthGuard } from 'src/auth/guards/jwt-auth.guard';
import { Roles } from 'src/user/decorators';
import { UseGuards } from '@nestjs/common/decorators';
import { UserEntity } from 'src/user/entities/user.entity';
import { CurrentUser } from 'src/auth/decorators/current-user.decorator';
import { SupplierEntity } from './entities/supplier.entity';
import { IsPublicRoute } from 'src/auth/decorators/is-public-route.decorator';
import { UpdateSupplierInput } from './dto/update-supplier.input';

@Resolver(() => Supplier)
@UseGuards(JwtAuthGuard)
export class SupplierResolver {
  constructor(private supplierService: SupplierService) {}

  @IsPublicRoute()
  @Mutation(() => Supplier, { name: 'createSupplier' })
  async createSupplier(
    @CurrentUser() user: UserEntity,
    @Args('data') data: CreateSupplierInput,
  ): Promise<Supplier> {
    return this.supplierService.create(data, user);
  }

  @Roles('SUPPLIER', 'ADMIN')
  @Mutation(() => Boolean, { name: 'deleteSupplier' })
  async delete(
    @Args('id') id: string,
    @CurrentUser() user: UserEntity,
  ): Promise<boolean> {
    return this.supplierService.delete(id, user);
  }

  @Roles('SUPPLIER', 'ADMIN')
  @Mutation(() => Boolean, { name: 'deleteSupplier' })
  async update(
    @CurrentUser() user: UserEntity,
    @Args('data') data: UpdateSupplierInput,
  ): Promise<SupplierEntity> {
    return this.supplierService.update(user, data);
  }

  @Query(() => Supplier, { name: 'findSupplierById', nullable: true })
  async findById(@Args('id') id: string): Promise<Supplier | null> {
    return this.supplierService.findById(id);
  }

  @Query(() => [Supplier], { name: 'findAllSuppliers' })
  async findAll(): Promise<Supplier[]> {
    return this.supplierService.findAll();
  }
}
