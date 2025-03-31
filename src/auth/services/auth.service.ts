import { Injectable, UnauthorizedException } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
import { compareSync } from 'bcrypt';
import { user } from '../../shared/prismagraphql/user';
import { UserService } from '../../user/user.service';
import { AuthInput } from '../dto/auth-input';
import { PayloadJwt } from '../dto/payload-jwt';
import { AuthResponse } from '../entities/auth.entity';
import { EstablishmentService } from '../../establishment/establishment.service';
import { establishment } from '../../shared/prismagraphql/establishment';

@Injectable()
export class AuthService {
  constructor(
    private readonly userService: UserService,
    private readonly establishmentService: EstablishmentService,
    private readonly jwtService: JwtService,
  ) {}
  async validateUser(authInput: AuthInput): Promise<AuthResponse> {
    let user = null;

    if (authInput.email != null) {
      user = await this.userService.findByEmail(authInput.email);
      if (!user) {
        throw new UnauthorizedException('Invalid credentials');
      }
    } else if (authInput.taxId != null) {
      user = await this.establishmentService.getByTaxId(authInput.taxId);
      if (!user) {
        throw new UnauthorizedException('Invalid credentials');
      }
    } else {
      throw new UnauthorizedException('Invalid credentials');
    }

    const isValidPassword = compareSync(authInput.password, user.password);
    if (!isValidPassword) {
      throw new UnauthorizedException('Invalid credentials');
    }
    return this.login(user);
  }
  private async login(user: user | establishment): Promise<AuthResponse> {
    const { id: sub, name } = user;
    const payload: PayloadJwt = {
      sub,
      name,
    };
    return {
      user,
      access_token: await this.jwtService.signAsync(payload),
    };
  }
}
