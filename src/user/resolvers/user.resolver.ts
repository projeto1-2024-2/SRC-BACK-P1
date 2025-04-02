import {
  Resolver,
  Query,
  Mutation,
  Args,
  ID,
  ArgsType,
  Field,
} from '@nestjs/graphql';
import { UserService } from '../user.service';
import { UserEntity } from '../entities/user.entity';
import { CreateUserInput } from '../dto/create-user.input';
import { UpdateUserInput } from '../dto/update-user.input';
import { IsPublicRoute } from '../../auth/decorators/is-public-route.decorator';
import { UseGuards } from '@nestjs/common';
import { JwtAuthGuard } from '../../auth/guards/jwt-auth.guard';
import { Roles } from '../decorators/roles.decorator';
import { IsNotEmpty, IsUUID } from 'class-validator';

@ArgsType()
class FindOneUserArgs {
  @Field(() => ID)
  @IsNotEmpty({ message: 'O ID não pode ser vazio' })
  @IsUUID('4', { message: 'ID deve ser um UUID válido' })
  id: string;
}
@Resolver(() => UserEntity)
@UseGuards(JwtAuthGuard)
export class UserResolver {
  constructor(private readonly userService: UserService) {}

  @IsPublicRoute()
  @Mutation(() => UserEntity, { name: 'createUser', nullable: true })
  async createUser(@Args('data') data: CreateUserInput) {
    return this.userService.create(data);
  }

  @Roles('ADMIN')
  @Query(() => [UserEntity], { name: 'findAllusers', nullable: true })
  async findAll() {
    return this.userService.findAll();
  }

  @Roles('ADMIN')
  @Query(() => UserEntity, { name: 'findByEmail', nullable: true })
  async findByEmail(@Args('email', { type: () => String }) email: string) {
    return await this.userService.findByEmail(email);
  }

  @Roles('ADMIN')
  @Query(() => UserEntity, { name: 'findOneuser', nullable: true })
  async findOne(@Args() { id }: FindOneUserArgs) {
    return this.userService.findOne(id);
  }

  @Roles('CONSUMER', 'ADMIN')
  @Mutation(() => UserEntity, { name: 'updateUser', nullable: true })
  async update(@Args('data') data: UpdateUserInput) {
    return this.userService.update(data);
  }

  @Roles('CONSUMER', 'ADMIN')
  @Mutation(() => UserEntity, { name: 'deleteUser', nullable: true })
  async remove(@Args() { id }: FindOneUserArgs) {
    return this.userService.remove(id);
  }
}
