import { Test, TestingModule } from '@nestjs/testing';
import { AddressResolver } from './address.resolver';
import { AddressService } from './address.service';
import { CreateAddressInput } from './dto/create-address.input';
import { UpdateAddressInput } from './dto/update-address.input';
import { AddressEntity } from './entities/address.entity';
import { UserEntity } from '../user/entities/user.entity';
import { validate } from 'class-validator';
import { plainToClass } from 'class-transformer';

describe('AddressResolver', () => {
  let resolver: AddressResolver;
  let service: AddressService;

  const mockUser: UserEntity = { id: 'user-1' } as UserEntity;

  const mockAddress: AddressEntity = {
    id: 'address-1',
    street: 'Rua Exemplo',
    number: 123,
    complement: 'Apto 101',
    neighbourhood: 'Centro',
    zipCode: '12345-678',
    city: 'Cidade Exemplo',
    state: 'EX',
  };

  const mockCreateInput: CreateAddressInput = {
    street: 'Rua Nova',
    number: 456,
    complement: 'Apto 202',
    neighbourhood: 'Bairro Novo',
    zipCode: '98765-432',
    city: 'Nova Cidade',
    state: 'NC',
  };

  const mockUpdateInput: UpdateAddressInput = {
    street: 'Rua Atualizada',
    number: 789,
    complement: 'Apto 505',
    neighbourhood: 'Bairro Atualizado',
    zipCode: '54321-987',
    city: 'Cidade Atualizada',
    state: 'AT',
  };

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [
        AddressResolver,
        {
          provide: AddressService,
          useValue: {
            create: jest.fn().mockResolvedValue(mockAddress),
            update: jest
              .fn()
              .mockResolvedValue({ ...mockAddress, ...mockUpdateInput }),
            get: jest.fn().mockResolvedValue(mockAddress),
          },
        },
      ],
    }).compile();

    resolver = module.get<AddressResolver>(AddressResolver);
    service = module.get<AddressService>(AddressService);
  });

  it('deve estar definido', () => {
    expect(resolver).toBeDefined();
  });

  describe('createAddress', () => {
    it('deve criar um endereço', async () => {
      await expect(
        resolver.createAddress(mockUser, mockCreateInput),
      ).resolves.toEqual(mockAddress);
      expect(service.create).toHaveBeenCalledWith(mockUser, mockCreateInput);
    });

    it('deve falhar se o campo street for vazio', async () => {
      const input = { ...mockCreateInput, street: '' };
      const errors = await validate(plainToClass(CreateAddressInput, input));
      expect(errors.length).toBeGreaterThan(0);
      expect(errors[0].constraints['isNotEmpty']).toBeDefined();
    });

    it('deve falhar se o campo number não for um número', async () => {
      const input = { ...mockCreateInput, number: 'abc' };
      const errors = await validate(plainToClass(CreateAddressInput, input));
      expect(errors.length).toBeGreaterThan(0);
      expect(errors[0].constraints['isNumber']).toBeDefined();
    });

    it('deve falhar se o campo zipCode for vazio', async () => {
      const input = { ...mockCreateInput, zipCode: '' };
      const errors = await validate(plainToClass(CreateAddressInput, input));
      expect(errors.length).toBeGreaterThan(0);
      expect(errors[0].constraints['isNotEmpty']).toBeDefined();
    });
  });

  describe('updateAddress', () => {
    it('deve atualizar um endereço', async () => {
      const updatedAddress = { ...mockAddress, ...mockUpdateInput };
      await expect(
        resolver.updateAddress(mockUser, mockUpdateInput),
      ).resolves.toEqual(updatedAddress);
      expect(service.update).toHaveBeenCalledWith(mockUser, mockUpdateInput);
    });

    it('deve falhar se o campo state for vazio', async () => {
      const input: UpdateAddressInput = {
        ...mockUpdateInput,
        state: '',
      };
      const errors = await validate(plainToClass(UpdateAddressInput, input));
      expect(errors.length).toBeGreaterThan(0);
      expect(errors[0].constraints['isNotEmpty']).toBeDefined();
    });

    it('deve falhar se o campo street for vazio', async () => {
      const input: UpdateAddressInput = {
        ...mockUpdateInput,
        street: '',
      };
      const errors = await validate(plainToClass(UpdateAddressInput, input));
      expect(errors.length).toBeGreaterThan(0);
      expect(errors[0].constraints['isNotEmpty']).toBeDefined();
    });

    it('não deve falhar se os campos forem opcionais e não passados', async () => {
      const input: UpdateAddressInput = {
        number: 789,
      };
      const errors = await validate(plainToClass(UpdateAddressInput, input));
      expect(errors.length).toBe(0);
    });
  });

  describe('getAddress', () => {
    it('deve retornar um endereço', async () => {
      await expect(resolver.getAddress(mockUser)).resolves.toEqual(mockAddress);
      expect(service.get).toHaveBeenCalledWith(mockUser);
    });
  });
});
