import { Resolver } from '@nestjs/graphql';
import { UserEntity } from '../entities/user.entity';
import { Roles } from '../decorators';
import { UserService } from 'src/user/user.service';
import { UseGuards } from '@nestjs/common';
import { JwtAuthGuard } from 'src/auth/guards/jwt-auth.guard';

@Resolver(() => UserEntity)
@UseGuards(JwtAuthGuard)
@Roles('ADMIN')
export class AdminResolver {
  constructor(private userService: UserService) {}
}
