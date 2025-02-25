import { ExecutionContext, Injectable } from '@nestjs/common';
import { IUserFromRequest } from 'src/common/global-interfaces';
import { Reflector } from '@nestjs/core';
import { GqlExecutionContext } from '@nestjs/graphql';
import { AuthGuard } from '@nestjs/passport';
import { Role } from '@prisma/client';

@Injectable()
export class JwtAuthGuard extends AuthGuard('jwt') {
  constructor(private readonly reflector: Reflector) {
    super();
  }
  public async canActivate(context: ExecutionContext) {
    await super.canActivate(context);

    const ctx = GqlExecutionContext.create(context);
    const user = ctx.getContext().req.user as IUserFromRequest;

    const classRole = this.reflector.get<Role[]>('roles', ctx.getClass());
    const handlerRole = this.reflector.get<Role[]>('roles', ctx.getHandler());

    let allowedRoles: Role[] = [];

    if (classRole) allowedRoles = classRole;
    if (handlerRole) allowedRoles.concat(handlerRole);

    if (allowedRoles.length === 0) return true;

    allowedRoles.push(Role.ADMIN);

    console.log(user);

    return user.role && allowedRoles.includes(user.role);
  }

  getRequest(context: ExecutionContext) {
    const ctx = GqlExecutionContext.create(context);
    return ctx.getContext().req;
  }
}
