import { Resolver, Query, Mutation, Args, ID } from '@nestjs/graphql';
import { UserService } from './user.service';
import { User } from './entities/user.entity';
import { CreateUserInput } from './dto/create-user.input';
import { UpdateUserInput } from './dto/update-user.input';

@Resolver(() => User)
export class UserResolver {
  constructor(private readonly userService: UserService) {}

  @Mutation(() => User, { name: 'createUser', nullable: true })
  async createUser(@Args('data') data: CreateUserInput) {
    return this.userService.create(data);
  }

  @Query(() => [User], { name: 'findAllusers', nullable: true })
  async findAll() {
    return this.userService.findAll();
  }

  @Query(() => User, { name: 'findOneuser', nullable: true })
  async findOne(@Args('id', { type: () => ID }) id: string) {
    return this.userService.findOne(id);
  }

  @Mutation(() => User, { name: 'updateUser', nullable: true })
  async update(@Args('data') data: UpdateUserInput) {
    return this.userService.update(data);
  }

  @Mutation(() => User, { name: 'deleteUser', nullable: true })
  async remove(@Args('id', { type: () => ID }) id: string) {
    return this.userService.remove(id);
  }
}
