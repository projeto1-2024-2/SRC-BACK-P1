import { createParamDecorator, ExecutionContext } from '@nestjs/common';
import { User } from 'src/shared/prismagraphql/user';
import { AuthRequest } from '../dto/auth-request';

export const CurrentUser = createParamDecorator(
  (data: unknown, context: ExecutionContext): User => {
    const request = context.switchToHttp().getRequest<AuthRequest>();
    const { user } = request;
    return user;
  },
);
