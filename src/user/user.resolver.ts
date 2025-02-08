import { Resolver, Query, Mutation, Args, ID } from '@nestjs/graphql';
import { UserService } from './user.service';
import { UserEntity } from './entities/user.entity';
import { CreateUserInput } from './dto/create-user.input';
import { UpdateUserInput } from './dto/update-user.input';
import { IsPublicRoute } from 'src/auth/decorators/is-public-route.decorator';
import { UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from 'src/auth/guards/auth.guard';

@Resolver(() => UserEntity)
@UseGuards(GqlAuthGuard)
export class UserResolver {
  constructor(private readonly userService: UserService) {}

  @IsPublicRoute()
  @Mutation(() => UserEntity, { name: 'createUser', nullable: true })
  async createUser(@Args('data') data: CreateUserInput) {
    return this.userService.create(data);
  }

  @Query(() => [UserEntity], { name: 'findAllusers', nullable: true })
  async findAll() {
    return this.userService.findAll();
  }

  @Query(() => UserEntity, { name: 'findByEmail', nullable: true })
  async findByEmail(@Args('email', { type: () => String }) email: string) {
    return await this.userService.findByEmail(email);
  }

  @Query(() => UserEntity, { name: 'findOneuser', nullable: true })
  async findOne(@Args('id', { type: () => ID }) id: string) {
    return this.userService.findOne(id);
  }

  @Mutation(() => UserEntity, { name: 'updateUser', nullable: true })
  async update(@Args('data') data: UpdateUserInput) {
    return this.userService.update(data);
  }

  @Mutation(() => UserEntity, { name: 'deleteUser', nullable: true })
  async remove(@Args('id', { type: () => ID }) id: string) {
    return this.userService.remove(id);
  }
}
