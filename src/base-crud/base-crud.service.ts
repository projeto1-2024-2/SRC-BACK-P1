import { Injectable } from '@nestjs/common';
import { PrismaService } from 'src/prisma/prisma.service';

@Injectable()
export class BaseCrudService<
  T,
  FindFirstArg,
  FindUniqueArg,
  FindManyArg,
  GroupByArg,
  AggregateArg,
  CreateArg,
  CreateManyArg,
  UpdateArg,
  UpdatedManyArg,
  DeleteArg,
  DeleteManyArg,
> {
  constructor(
    public prisma: PrismaService,
    private modelName: keyof PrismaService,
  ) {}

  async findFirst(args: FindFirstArg): Promise<T | null> {
    try {
      return await this.prisma[this.modelName].findFirst(args);
    } catch (e) {
      return null;
    }
  }

  findUnique(args: FindUniqueArg): Promise<T | null> {
    return this.prisma[this.modelName].findUnique(args);
  }

  findMany(args: FindManyArg): Promise<T[]> {
    return this.prisma[this.modelName].findMany(args);
  }

  groupBy(args: GroupByArg) {
    return (this.prisma[this.modelName] as any).groupBy(args);
  }

  aggregate(args: AggregateArg) {
    return (this.prisma[this.modelName] as any).aggregate(args);
  }

  create(args: CreateArg): Promise<T> {
    return this.prisma[this.modelName].create(args);
  }

  createMany(args: CreateManyArg) {
    return this.prisma[this.modelName].createMany(args);
  }

  update(args: UpdateArg): Promise<T> {
    return this.prisma[this.modelName].update(args);
  }

  updateMany(args: UpdatedManyArg): Promise<{ count: number }> {
    return this.prisma[this.modelName].updateMany(args);
  }

  delete(args: DeleteArg): Promise<T> {
    return this.prisma[this.modelName].delete(args);
  }

  deleteMany(args: DeleteManyArg): Promise<{ count: number }> {
    return this.prisma[this.modelName].deleteMany(args);
  }
}
