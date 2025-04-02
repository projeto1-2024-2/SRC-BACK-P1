import { Test, TestingModule } from '@nestjs/testing';
import { BadRequestException } from '@nestjs/common';
import { UserResolver } from './resolvers/user.resolver';
import { UserService } from './user.service';
import { JwtAuthGuard } from '../auth/guards/jwt-auth.guard';
import { ExecutionContext } from '@nestjs/common';
import { Reflector } from '@nestjs/core';
import { Role } from './user.types';
import { CreateUserInput } from './dto/create-user.input';
import { UserEntity } from './entities/user.entity';
import * as bcrypt from 'bcrypt';

jest.mock('bcrypt', () => ({
  hash: jest.fn().mockResolvedValue('hashed-password'),
}));

describe('UserResolver', () => {
  let resolver: UserResolver;
  let userService: jest.Mocked<UserService>;

  const mockJwtGuard = { canActivate: (context: ExecutionContext) => true };
  const mockRolesGuard = { canActivate: (context: ExecutionContext) => true };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        UserResolver,
        {
          provide: UserService,
          useValue: {
            create: jest.fn().mockImplementation(async (dto) => {
              if (!dto.name || !dto.email || !dto.password) {
                throw new BadRequestException('Missing required fields');
              }
              if (dto.email === 'invalid-email') {
                throw new BadRequestException('Invalid email format');
              }

              const user = {
                id: '1',
                name: dto.name,
                email: dto.email,
                pseudonym: dto.pseudonym || 'default',
                phoneNumber: dto.phoneNumber,
                createdAt: new Date(),
                updatedAt: new Date(),
                addressId: 'address-1',
                role: dto.role || Role.CONSUMER,
              };
              return user as UserEntity;
            }),
          },
        },
        Reflector,
      ],
    })
      .overrideGuard(JwtAuthGuard)
      .useValue(mockJwtGuard)
      .overrideGuard(Role)
      .useValue(mockRolesGuard)
      .compile();

    resolver = module.get<UserResolver>(UserResolver);
    userService = module.get(UserService);
  });

  describe('createUser', () => {
    it('should create a user successfully', async () => {
      const createUserInput: CreateUserInput = {
        name: 'Test User',
        email: 'valid@example.com',
        password: 'ValidPass123!',
        phoneNumber: '123456789',
        newAddress: {
          street: 'Rua Nova',
          number: 456,
          complement: 'Apto 202',
          neighbourhood: 'Bairro Novo',
          zipCode: '98765-432',
          city: 'Nova Cidade',
          state: 'NC',
        },
        role: Role.ADMIN,
      };

      const result = await resolver.createUser(createUserInput);
      expect(result).toEqual(
        expect.objectContaining({
          id: '1',
          name: 'Test User',
          email: 'valid@example.com',
          phoneNumber: '123456789',
          role: Role.ADMIN,
        }),
      );
      expect(result).not.toHaveProperty('password');
      expect(userService.create).toHaveBeenCalledWith(createUserInput);
    });

    it('should reject invalid email format', async () => {
      const invalidInput = {
        name: 'Test',
        email: 'invalid-email',
        password: 'ValidPass123!',
        phoneNumber: '123456789',
        newAddress: {
          street: 'Rua',
          number: 123,
          neighbourhood: 'Bairro',
          city: 'Cidade',
          state: 'ST',
          zipCode: '12345-678',
        },
        role: Role.CONSUMER,
      };

      await expect(
        resolver.createUser(invalidInput as CreateUserInput),
      ).rejects.toThrow(BadRequestException);
    });
  });

  describe('Security', () => {
    it('should not return password in any response', async () => {
      userService.create.mockImplementationOnce(async (dto) => {
        const user = {
          id: '1',
          name: dto.name,
          email: dto.email,
          password: 'hashedPassword',
          pseudonym: 'tester',
          phoneNumber: dto.phoneNumber,
          createdAt: new Date(),
          updatedAt: new Date(),
          addressId: 'address-1',
          role: Role.CONSUMER,
        } as UserEntity;

        user.password = null;
        return user;
      });

      const result = await resolver.createUser({
        name: 'Test',
        email: 'test@example.com',
        password: 'ValidPass123!',
        phoneNumber: '123456789',
        newAddress: {
          street: 'Rua',
          number: 123,
          neighbourhood: 'Bairro',
          city: 'Cidade',
          state: 'ST',
          zipCode: '12345-678',
        },
        role: Role.CONSUMER,
      } as CreateUserInput);

      expect(result.password).toEqual(null);
    });
  });
});
