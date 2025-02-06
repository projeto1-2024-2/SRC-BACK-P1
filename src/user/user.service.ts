import { Injectable } from '@nestjs/common';
import { CreateUserInput } from './dto/create-user.input';
import { UpdateUserInput } from './dto/update-user.input';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class UserService {
  constructor(private readonly prismaService: PrismaService) {}

  async create(data: CreateUserInput) {
    const user = await this.prismaService.user.create({
      data: {
        ...data,
      },
    });

    return user;
  }

  async findAll() {
    const users = await this.prismaService.user.findMany();
    return users;
  }

  async findOne(id: string) {
    const user = await this.prismaService.user.findUnique({ where: { id } });
    return user;
  }

  async update(data: UpdateUserInput) {
    const user = await this.prismaService.user.update({
      where: { id: data.id },
      data,
    });
    return user;
  }

  async remove(id: string) {
    await this.prismaService.user.delete({
      where: { id: id },
    });
    return id;
  }
}
