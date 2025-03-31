import { Resolver } from '@nestjs/graphql';
import { UserEntity } from '../entities/user.entity';
import { Roles } from '../decorators';
import { UserService } from '../../user/user.service';
import { UseGuards } from '@nestjs/common';
import { JwtAuthGuard } from '../../auth/guards/jwt-auth.guard';

@Resolver(() => UserEntity)
@UseGuards(JwtAuthGuard)
@Roles('ADMIN')
export class AdminResolver {
  constructor(private userService: UserService) {}
}
