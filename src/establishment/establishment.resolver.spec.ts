import { Test, TestingModule } from '@nestjs/testing';
import { EstablishmentResolver } from './establishment.resolver';

describe('EstablishmentResolver', () => {
  let resolver: EstablishmentResolver;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [EstablishmentResolver],
    }).compile();

    resolver = module.get<EstablishmentResolver>(EstablishmentResolver);
  });

  it('should be defined', () => {
    expect(resolver).toBeDefined();
  });
});
