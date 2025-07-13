import { Injectable, HttpException, HttpStatus } from '@nestjs/common';
import { CreateUserInput } from './dto/create-user.input';
import { UpdateUserInput } from './dto/update-user.input';
import { PrismaService } from '../prisma/prisma.service';
import * as bcrypt from 'bcrypt';
import { UserEntity } from './entities/user.entity';
import { use } from 'passport';

@Injectable()
export class UserService {
  private saltRounds = 10;

  constructor(private readonly prismaService: PrismaService) {}

  async create(createUserDto: CreateUserInput): Promise<UserEntity> {
    const userExists = await this.prismaService.user.findUnique({
      where: { email: createUserDto.email },
    });

    if (userExists) {
      throw new HttpException('User already exists', HttpStatus.CONFLICT);
    }

    const address = await this.prismaService.address.create({
      data: createUserDto.newAddress,
    });

    const user = await this.prismaService.user.create({
      data: {
        name: createUserDto.name,
        pseudonym: createUserDto.pseudonym,
        email: createUserDto.email,
        password: await bcrypt.hash(createUserDto.password, this.saltRounds),
        phoneNumber: createUserDto.phoneNumber,
        addressId: address.id,
      },
    });

    user.password = null;
    return user;
  }

  async findAll() {
    const users = await this.prismaService.user.findMany();
    users.map((user) => delete user.password);
    return users;
  }

  async findOne(id: string) {
    const user = await this.prismaService.user.findUnique({
      where: { id },
    });
    if (user) {
      delete user.password;
    }
    return user;
  }

  async findByEmail(email: string) {
    const user = await this.prismaService.user.findUnique({
      where: { email: email },
    });
    if (user) {
      delete user.password;
    }
    return user;
  }

  async update(data: UpdateUserInput) {
    const userExists = await this.prismaService.user.findUnique({
      where: { id: data.id },
    });

    if (!userExists) {
      throw new HttpException('User do not exists', HttpStatus.NOT_FOUND);
    }

    const user = await this.prismaService.user.update({
      where: { id: data.id },
      data: data,
    });

    if (user) {
      delete user.password;
    }
    return user;
  }

  async remove(id: string) {
    const userExists = await this.prismaService.user.findUnique({
      where: { id },
    });

    if (!userExists) {
      throw new HttpException('User do not exists', HttpStatus.NOT_FOUND);
    }

    await this.prismaService.user.delete({ where: { id } });
  }

  async existsById(id: string): Promise<boolean> {
    const user = await this.prismaService.user.findUnique({
      where: { id },
    });
    return !!user;
  }
}
