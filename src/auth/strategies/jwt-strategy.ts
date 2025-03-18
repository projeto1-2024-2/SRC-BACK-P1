import { ExtractJwt, Strategy } from 'passport-jwt';
import { PassportStrategy } from '@nestjs/passport';
import { Injectable, UnauthorizedException } from '@nestjs/common';
import { PayloadJwt } from '../dto/payload-jwt';
import { UserService } from 'src/user/user.service';
import { EstablishmentService } from 'src/establishment/establishment.service';

@Injectable()
export class JwtStrategy extends PassportStrategy(Strategy) {
  constructor(
    private readonly userService: UserService,
    private readonly establishmentService: EstablishmentService,
  ) {
    super({
      jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken(),
      ignoreExpiration: false,
      secretOrKey: process.env.JWT_SECRET,
    });
  }

  async validate(payload: PayloadJwt) {
    const { sub } = payload;
    let user = null;
    user = await this.userService.findOne(sub);
    if (!user) {
      user = await this.establishmentService.findById(sub);
      if (!user) {
        throw new UnauthorizedException('invalid token');
      }
    }
    return user;
  }
}
