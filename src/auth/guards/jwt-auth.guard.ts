import { ExecutionContext, Injectable } from '@nestjs/common';
import { IUserFromRequest } from 'src/common/global-interfaces';
import { Reflector } from '@nestjs/core';
import { ExecutionContextHost } from '@nestjs/core/helpers/execution-context-host';
import { GqlExecutionContext } from '@nestjs/graphql';
import { AuthGuard } from '@nestjs/passport';
import { Role } from '@prisma/client';

import { IS_PUBLIC_KEY } from '../decorators/is-public-route.decorator';

@Injectable()
export class JwtAuthGuard extends AuthGuard('jwt') {
  constructor(private reflector: Reflector) {
    super();
  }

  public async canActivate(context: ExecutionContext) {
    const ctx = GqlExecutionContext.create(context);
    const user = ctx.getContext().req.user as IUserFromRequest;

    const handlerRole = this.reflector.get<Role[]>('roles', ctx.getHandler());

    const allowedRoles: Role[] = [];

    if (handlerRole) allowedRoles.concat(handlerRole);

    allowedRoles.push(Role.SUPPLIER, Role.ADMIN, Role.CONSUMER);

    const isPublic = this.reflector.getAllAndOverride<boolean>(IS_PUBLIC_KEY, [
      context.getHandler(),
      context.getClass(),
    ]);

    if (isPublic) {
      return true;
    }
    const { req } = ctx.getContext();

    await super.canActivate(new ExecutionContextHost([req]));

    return user.role && allowedRoles.includes(user.role);
  }
}
