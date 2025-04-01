import { Test, TestingModule } from '@nestjs/testing';
import { UserService } from './user.service';
import { PrismaService } from '../prisma/prisma.service';
import { HttpException, HttpStatus } from '@nestjs/common';
import { Role } from './user.types';

describe('UserService', () => {
  let service: UserService;
  let prisma: PrismaService;

  const mockPrismaService = {
    user: {
      findUnique: jest.fn(),
      create: jest.fn(),
      findMany: jest.fn(),
      update: jest.fn(),
      delete: jest.fn(),
    },
    address: {
      create: jest.fn(),
      get: jest.fn(),
    },
  };

  beforeEach(async () => {
    const moduleRef: TestingModule = await Test.createTestingModule({
      providers: [
        UserService,
        { provide: PrismaService, useValue: mockPrismaService }, // Usando o mock tipado
      ],
    }).compile();

    service = moduleRef.get<UserService>(UserService);
    prisma = moduleRef.get<PrismaService>(PrismaService);
  });

  afterEach(() => {
    jest.clearAllMocks();
  });

  describe('create', () => {
    it('should create a new user', async () => {
      mockPrismaService.user.findUnique.mockResolvedValue(null);
      mockPrismaService.address.create.mockResolvedValue({
        id: 'address-id',
      });
      mockPrismaService.user.create.mockResolvedValue({
        id: 'user-id',
        email: 'test@example.com',
      });

      jest
        .spyOn(require('bcrypt'), 'hash')
        .mockResolvedValue('hashed-password');

      const result = await service.create({
        name: 'Test User',
        pseudonym: 'Tester',
        email: 'test@example.com',
        password: 'password12.Com',
        phoneNumber: '1234567890',
        newAddress: {
          street: 'Rua Nova',
          number: 456,
          complement: 'Apto 202',
          neighbourhood: 'Bairro Novo',
          zipCode: '98765-432',
          city: 'Nova Cidade',
          state: 'NC',
        },
        role: Role.CONSUMER,
        image: undefined,
      });

      expect(result).toEqual({ id: 'user-id', email: 'test@example.com' });
      expect(prisma.user.create).toHaveBeenCalled();
    });

    it('should throw an error if the user already exists', async () => {
      mockPrismaService.user.findUnique.mockResolvedValue({
        email: 'test@example.com',
      });

      await expect(
        service.create({
          email: 'test@example.com',
          password: 'password',
          name: 'Test',
          phoneNumber: '123',
          newAddress: {
            street: 'Rua Nova',
            number: 456,
            complement: 'Apto 202',
            neighbourhood: 'Bairro Novo',
            zipCode: '98765-432',
            city: 'Nova Cidade',
            state: 'NC',
          },
          role: Role.CONSUMER,
        }),
      ).rejects.toThrow(
        new HttpException('User already exists', HttpStatus.CONFLICT),
      );
    });

    it('should hash password before saving', async () => {
      mockPrismaService.user.findUnique.mockResolvedValue(null);
      mockPrismaService.address.create.mockResolvedValue({ id: 'address-id' });
      mockPrismaService.user.create.mockResolvedValue({ id: 'user-id' });

      const hashSpy = jest
        .spyOn(require('bcrypt'), 'hash')
        .mockResolvedValue('hashed-password');

      await service.create({
        name: 'Test User',
        email: 'test@example.com',
        password: 'plain-password',
        phoneNumber: '1234567890',
        newAddress: {
          street: 'Rua Nova',
          number: 456,
          complement: 'Apto 202',
          neighbourhood: 'Bairro Novo',
          zipCode: '98765-432',
          city: 'Nova Cidade',
          state: 'NC',
        },
        role: Role.CONSUMER,
      });

      expect(hashSpy).toHaveBeenCalledWith('plain-password', 10);
    });

    it('should handle Prisma errors gracefully', async () => {
      mockPrismaService.user.findUnique.mockResolvedValue(null);
      mockPrismaService.address.create.mockRejectedValue(new Error('DB Error'));

      await expect(
        service.create({
          name: 'Test',
          email: 'test@example.com',
          password: 'pass',
          phoneNumber: '123',
          newAddress: {
            street: 'Rua Nova',
            number: 456,
            complement: 'Apto 202',
            neighbourhood: 'Bairro Novo',
            zipCode: '98765-432',
            city: 'Nova Cidade',
            state: 'NC',
          },
          role: Role.CONSUMER,
        }),
      ).rejects.toThrow('DB Error');
    });
  });

  describe('findAll', () => {
    it('should return a list of users', async () => {
      mockPrismaService.user.findMany.mockResolvedValue([
        { id: '1', email: 'user@example.com' },
      ]);

      const result = await service.findAll();

      expect(result).toEqual([{ id: '1', email: 'user@example.com' }]);
      expect(prisma.user.findMany).toHaveBeenCalled();
    });

    it('should return empty array when no users exist', async () => {
      mockPrismaService.user.findMany.mockResolvedValue([]);
      expect(await service.findAll()).toEqual([]);
    });

    // // Teste para quando paginação for adicionada
    // it('should apply pagination when implemented', async () => {
    //   mockPrismaService.user.findMany.mockResolvedValue([]);
    //   await service.findAll(1, 10);
    //   expect(prisma.user.findMany).toHaveBeenCalledWith(
    //     expect.objectContaining({
    //       skip: expect.any(Number),
    //       take: expect.any(Number),
    //     }),
    //   );
    // });
  });

  describe('findOne', () => {
    it('should return a user by ID', async () => {
      mockPrismaService.user.findUnique.mockResolvedValue({
        id: '1',
        email: 'user@example.com',
      });
      const result = await service.findOne('1');
      expect(result).toEqual({ id: '1', email: 'user@example.com' });
    });
  });

  describe('update', () => {
    it('should update a user', async () => {
      mockPrismaService.user.findMany.mockResolvedValue({ id: '1' });
      mockPrismaService.user.update.mockResolvedValue({
        id: '1',
        name: 'Updated Name',
      });

      const result = await service.update({ id: '1', name: 'Updated Name' });
      expect(result).toEqual({ id: '1', name: 'Updated Name' });
    });

    it('should throw an error if the user does not exist', async () => {
      mockPrismaService.user.findUnique.mockResolvedValue(null);

      await expect(
        service.update({ id: '999', name: 'Updated Name' }),
      ).rejects.toThrow(
        new HttpException('User do not exists', HttpStatus.NOT_FOUND),
      );
    });

    it('should not update password if not provided', async () => {
      const existingUser = {
        id: '1',
        password: 'existing-hash',
        email: 'test@example.com',
      };

      mockPrismaService.user.findUnique.mockResolvedValue(existingUser);
      mockPrismaService.user.update.mockImplementation((args) => args.data);

      const result = await service.update({ id: '1', name: 'New Name' });
      expect(result.password).toBeUndefined();
    });
  });

  describe('remove', () => {
    it('should delete a user', async () => {
      mockPrismaService.user.findUnique.mockResolvedValue({ id: '1' });
      mockPrismaService.user.delete.mockResolvedValue({ id: '1' });

      await expect(service.remove('1')).resolves.not.toThrow();
      expect(prisma.user.delete).toHaveBeenCalledWith({ where: { id: '1' } });
    });

    it('should throw an error if the user does not exist', async () => {
      mockPrismaService.user.findUnique.mockResolvedValue(null);
      await expect(service.remove('1')).rejects.toThrow(
        new HttpException('User do not exists', HttpStatus.NOT_FOUND),
      );
    });

    it('should cascade delete related records', async () => {
      mockPrismaService.user.findUnique.mockResolvedValue({ id: '1' });

      await service.remove('1');
      expect(prisma.user.delete).toHaveBeenCalled();
    });
  });

  describe('existsById', () => {
    it('should return true if user exists', async () => {
      mockPrismaService.user.findUnique.mockResolvedValue({ id: '1' });
      expect(await service.existsById('1')).toBe(true);
    });

    it('should return false if user does not exist', async () => {
      mockPrismaService.user.findUnique.mockResolvedValue(null);
      expect(await service.existsById('1')).toBe(false);
    });
  });

  describe('findByEmail', () => {
    const mockUser = {
      id: '1',
      email: 'Test@Example.com',
    };

    describe('when email matches exactly (case sensitive)', () => {
      it('should return the user for exact match', async () => {
        mockPrismaService.user.findUnique.mockImplementation((args) => {
          return args.where.email === 'Test@Example.com'
            ? Promise.resolve(mockUser)
            : Promise.resolve(null);
        });

        const result = await service.findByEmail('Test@Example.com');

        expect(result).toEqual(mockUser);
        expect(prisma.user.findUnique).toHaveBeenCalledWith({
          where: { email: 'Test@Example.com' },
        });
      });
    });

    describe('when email differs in case', () => {
      it('should return null for case mismatch', async () => {
        mockPrismaService.user.findUnique.mockImplementation((args) => {
          return args.where.email === 'Test@Example.com'
            ? Promise.resolve(mockUser)
            : Promise.resolve(null);
        });

        await expect(
          service.findByEmail('test@example.com'),
        ).resolves.toBeNull();
        await expect(
          service.findByEmail('TEST@EXAMPLE.COM'),
        ).resolves.toBeNull();
      });
    });

    describe('when email does not exist', () => {
      it('should return null', async () => {
        mockPrismaService.user.findUnique.mockResolvedValue(null);
        await expect(
          service.findByEmail('inexistente@test.com'),
        ).resolves.toBeNull();
      });
    });
  });

  describe('security', () => {
    it('should never include password in response objects', async () => {
      mockPrismaService.user.findUnique.mockResolvedValue({
        id: '1',
        name: 'Test User',
        email: 'test@example.com',
        password: 'secret-hash',
        pseudonym: 'tester',
        phoneNumber: '+123456789',
        image: Buffer.from(''),
        createdAt: new Date(),
        updatedAt: new Date(),
        addressId: null,
        role: Role.CONSUMER,
      });

      const result = await service.findOne('1');

      expect(result).toEqual(
        expect.not.objectContaining({
          password: expect.anything(),
        }),
      );

      expect(result).toHaveProperty('id');
      expect(result).toHaveProperty('email');
      expect(result).not.toHaveProperty('password');
    });

    it('should never include password in response objects', async () => {
      mockPrismaService.user.findMany.mockResolvedValue([
        {
          id: '1',
          name: 'Test User 1',
          email: 'test1@example.com',
          password: 'secret-hash-1',
          pseudonym: 'tester1',
          phoneNumber: '+123456789',
          image: Buffer.from(''),
          createdAt: new Date(),
          updatedAt: new Date(),
          addressId: null,
          role: Role.CONSUMER,
        },
        {
          id: '2',
          name: 'Test User 2',
          email: 'test2@example.com',
          password: 'secret-hash-2',
          pseudonym: 'tester2',
          phoneNumber: '+987654321',
          image: Buffer.from(''),
          createdAt: new Date(),
          updatedAt: new Date(),
          addressId: 'address-1',
          role: Role.ADMIN,
        },
      ]);

      const results = await service.findAll();

      results.forEach((user) => {
        expect(user).toEqual(
          expect.not.objectContaining({
            password: expect.anything(),
          }),
        );

        expect(user).toHaveProperty('id');
        expect(user).toHaveProperty('email');
        expect(user).toHaveProperty('name');
        expect(user).not.toHaveProperty('password');
      });

      expect(results).toHaveLength(2);
    });
  });
});
