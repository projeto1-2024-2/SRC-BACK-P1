import { Test, TestingModule } from '@nestjs/testing';
import { GeolocationResolver } from './geolocation.resolver';

describe('GeolocationResolver', () => {
  let resolver: GeolocationResolver;

  beforeEach(async () => {
    const module: TestingModule = await Test.createTestingModule({
      providers: [GeolocationResolver],
    }).compile();

    resolver = module.get<GeolocationResolver>(GeolocationResolver);
  });

  it('should be defined', () => {
    expect(resolver).toBeDefined();
  });
});
