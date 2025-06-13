import { Injectable } from '@nestjs/common';
import axios from 'axios';
import { UserEntity } from '../user/entities/user.entity';
import { PrismaService } from '../prisma/prisma.service';

@Injectable()
export class GeolocationService {
  constructor(private readonly prismaService: PrismaService) {}

  async geolocation(
    user: UserEntity,
    establishmentId: string,
  ): Promise<number> {
    const userAddress = await this.prismaService.address.findUnique({
      where: { id: user.addressId },
      include: { location: true },
    });

    const establishmentAddress = await this.prismaService.address.findUnique({
      where: { establishments: { id: establishmentId } },
      include: { location: true },
    });

    try {
      // Montando a URL para o OSRM (IP:porta do serviço)
      const url = `http://127.0.0.1:5000/route/v1/driving/${userAddress.location.x},${userAddress.location.y};${establishmentAddress.location.x},${establishmentAddress.location.y}?overview=full`;

      // Fazendo a requisição para a API do OSRM
      const response = await axios.get(url);

      // A distância estará no campo 'routes[0].legs[0].distance' da resposta JSON
      return response.data.routes[0].legs[0].distance;
    } catch (error) {
      console.error('Erro ao calcular a distância:', error);
      throw new Error('Erro ao calcular a distância');
    }
  }
}
