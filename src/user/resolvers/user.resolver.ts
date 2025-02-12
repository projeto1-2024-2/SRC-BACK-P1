import { Resolver, Query, Mutation, Args, ID, Info } from '@nestjs/graphql';
import { UserService } from '../user.service';
import { UserEntity } from '../entities/user.entity';
import { CreateUserInput } from '../dto/create-user.input';
import { UpdateUserInput } from '../dto/update-user.input';
import { IsPublicRoute } from 'src/auth/decorators/is-public-route.decorator';
import { BadRequestException, UseGuards } from '@nestjs/common';
import { GqlAuthGuard } from 'src/auth/guards/auth.guard';
import { CurrentUser } from '../decorators';
import { GraphQLResolveInfo } from 'graphql';
import { UserWhereUniqueInput } from 'src/shared/prismagraphql/user';
import { ChangePasswordInput } from '../dto/change-password.input';

@Resolver(() => UserEntity)
@UseGuards(GqlAuthGuard)
export class UserResolver {
  constructor(private readonly userService: UserService) {}

  @Query(() => UserEntity)
  public async me(
    @CurrentUser() user: UserEntity,
    @Info() info?: GraphQLResolveInfo,
  ) {
    // Re-find user from database for search the  related field too
    const where: UserWhereUniqueInput = {
      id: user.id,
    };
    const userFound = await this.userService.getUserByUniqueInput(where, info);
    if (!userFound) {
      throw new BadRequestException(
        'Unauthorized: user did not authenticated!',
      );
    }
    return userFound;
  }

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

  @Mutation(() => UserEntity)
  async changePassword(
    @CurrentUser() user: UserEntity,
    @Args('data') input: ChangePasswordInput,
  ) {
    return this.userService.changePassword(user.id, user.password, input);
  }
}
