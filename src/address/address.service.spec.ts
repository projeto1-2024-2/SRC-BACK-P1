import { Test, TestingModule } from '@nestjs/testing';
import { AddressService } from './address.service';
import { HttpException } from '@nestjs/common';
import { UserEntity } from '../user/entities/user.entity';
import { CreateAddressInput } from './dto/create-address.input';
import { UpdateAddressInput } from './dto/update-address.input';
import { AddressEntity } from './entities/address.entity';
import { PrismaService } from '../prisma/prisma.service';

describe.only('AddressService', () => {
  let service: AddressService;
  let prismaService: PrismaService;

  const createdAddress: AddressEntity = {
    id: 'address123',
    street: 'Rua A',
    number: 100,
    complement: 'Apto 10',
    neighbourhood: 'Centro',
    zipCode: '12345-678',
    city: 'São Paulo',
    state: 'SP',
  };

  const mockPrismaService = {
    address: {
      create: jest
        .fn()
        .mockResolvedValue({ id: 'address123', ...createdAddress }),
      update: jest.fn().mockResolvedValue(createdAddress),
      findUnique: jest.fn().mockResolvedValue(createdAddress),
    },
    user: {
      update: jest.fn().mockResolvedValue({
        id: 'user123',
        addressId: createdAddress.id,
        name: '',
        pseudonym: '',
        email: '',
        password: '',
        createdAt: new Date(),
        updatedAt: new Date(),
      } as UserEntity),
    },
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        AddressService,
        { provide: PrismaService, useValue: mockPrismaService },
      ],
    }).compile();

    service = module.get<AddressService>(AddressService);
    prismaService = module.get<PrismaService>(PrismaService);
  });

  it('deve ser definido', () => {
    expect(service).toBeDefined();
  });

  describe('create', () => {
    it('deve criar um endereço e associá-lo ao usuário', async () => {
      const user: UserEntity = { id: 'user123', addressId: null } as UserEntity;
      const addressInput: CreateAddressInput = {
        street: 'Rua A',
        number: 100,
        complement: 'Apto 10',
        neighbourhood: 'Centro',
        zipCode: '12345-678',
        city: 'São Paulo',
        state: 'SP',
      };

      const result = await service.create(user, addressInput);

      expect(result).toEqual(createdAddress);
      expect(prismaService.address.create).toHaveBeenCalledWith({
        data: addressInput,
      });
      expect(prismaService.user.update).toHaveBeenCalledWith({
        where: { id: user.id },
        data: { addressId: createdAddress.id },
      });
    });
  });

  describe('update', () => {
    it('deve atualizar um endereço existente', async () => {
      const user: UserEntity = {
        id: 'user123',
        addressId: 'address123',
      } as UserEntity;
      const updateInput: UpdateAddressInput = {
        street: 'Nova Rua',
        number: 0,
        complement: '',
        neighbourhood: '',
        zipCode: '',
        city: '',
        state: '',
      };

      const updatedAddress: AddressEntity = {
        id: 'address123',
        street: 'Nova Rua',
        number: 0,
        complement: '',
        neighbourhood: '',
        zipCode: '',
        city: '',
        state: '',
      };

      mockPrismaService.address.update.mockResolvedValue(updatedAddress);

      const result = await service.update(user, updateInput);

      expect(result).toEqual(updatedAddress);
      expect(prismaService.address.update).toHaveBeenCalledWith({
        where: { id: user.addressId },
        data: updateInput,
      });
    });

    it('deve lançar um erro se o endereço não for encontrado', async () => {
      const user: UserEntity = {
        id: 'user123',
        addressId: 'invalid-id',
      } as UserEntity;
      const updateInput: UpdateAddressInput = {
        street: 'Nova Rua',
        number: 0,
        complement: '',
        neighbourhood: '',
        zipCode: '',
        city: '',
        state: '',
      };

      mockPrismaService.address.update.mockRejectedValue(
        new HttpException('Address not found', 404),
      );

      await expect(service.update(user, updateInput)).rejects.toThrow(
        HttpException,
      );
    });
  });

  describe('get', () => {
    it('deve retornar um endereço existente', async () => {
      const user: UserEntity = {
        id: 'user123',
        addressId: 'address123',
      } as UserEntity;

      const result = await service.get(user);

      expect(result).toEqual(createdAddress);
      expect(prismaService.address.findUnique).toHaveBeenCalledWith({
        where: { id: user.addressId },
      });
    });

    it('deve lançar um erro se o endereço não for encontrado', async () => {
      const user: UserEntity = {
        id: 'user123',
        addressId: 'invalid-id',
      } as UserEntity;

      mockPrismaService.address.findUnique.mockResolvedValue(null);

      await expect(service.get(user)).rejects.toThrow(HttpException);
    });
  });

  it('deve lançar um erro se falhar ao criar um endereço', async () => {
    const user: UserEntity = { id: 'user123', addressId: null } as UserEntity;
    const addressInput: CreateAddressInput = {
      street: 'Rua A',
      number: 100,
      complement: 'Apto 10',
      neighbourhood: 'Centro',
      zipCode: '12345-678',
      city: 'São Paulo',
      state: 'SP',
    };

    mockPrismaService.address.create.mockRejectedValue(
      new Error('Erro ao criar endereço'),
    );

    await expect(service.create(user, addressInput)).rejects.toThrow(
      'Erro ao criar endereço',
    );
  });

  it('deve lançar um erro se o usuário não tiver um endereço associado', async () => {
    const user: UserEntity = { id: 'user123', addressId: null } as UserEntity;
    const updateInput: UpdateAddressInput = {
      street: 'Nova Rua',
      number: 0,
      complement: '',
      neighbourhood: '',
      zipCode: '',
      city: '',
      state: '',
    };

    await expect(service.update(user, updateInput)).rejects.toThrow(
      HttpException,
    );
  });
});
