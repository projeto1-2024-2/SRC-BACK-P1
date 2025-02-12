import { UserWhereUniqueInput } from 'src/shared/prismagraphql/user';
import { Injectable } from '@nestjs/common';
import {
  ValidatorConstraint,
  ValidationArguments,
  ValidatorConstraintInterface,
} from 'class-validator';
import { UserService } from '../user.service';

@ValidatorConstraint({ name: 'user', async: true })
@Injectable()
export class UserExitsValidator implements ValidatorConstraintInterface {
  constructor(private readonly userService: UserService) {}

  /**
   * Method should return true, if name is not taken
   */
  public async validate(email: string, _args: ValidationArguments) {
    const where: UserWhereUniqueInput = {
      email,
    };
    try {
      console.log(_args);
      const check = await this.userService.getUserByUniqueInput(where);
      return !check;
    } catch (error) {
      console.log(error);
      return true;
    }
  }
  defaultMessage(_args: ValidationArguments) {
    console.log(_args);
    return 'User with $property $value already exists';
  }
}
