import { Resolver, Mutation, Args } from '@nestjs/graphql';
import { AuthService } from './auth.service';
import { IsPublicRoute } from './decorators/is-public-route.decorator';
import { AuthInput } from './dto/auth-input';
import { AuthResponse } from './entities/auth.entity';

@IsPublicRoute()
@Resolver(() => AuthResponse)
export class AuthResolver {
  constructor(private readonly authService: AuthService) {}
  @Mutation(() => AuthResponse, { name: 'authenticate' })
  createAuth(@Args('login') login: AuthInput): Promise<any> {
    return this.authService.validateUser(login);
  }
}
