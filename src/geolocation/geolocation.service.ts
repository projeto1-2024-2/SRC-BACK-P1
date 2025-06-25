import { Injectable, BadRequestException } from '@nestjs/common';
import axios from 'axios';
import { PrismaService } from '../prisma/prisma.service';

interface UserGeo {
  latitude:  number;
  longitude: number;
}

interface DistanceOutput {
  establishmentId: string;
  distance:        number;
}

@Injectable()
export class GeolocationService {
  constructor(private readonly prismaService: PrismaService) {}

  /**
   * Calcula a distância de um usuário até vários estabelecimentos
   * usando coords do usuário informadas e o model Location para estabelecimentos.
   *
   * @param userGeo          Obj com latitude e longitude do usuário
   * @param establishmentIds IDs dos estabelecimentos
   * @returns                Array de objetos { establishmentId, distance }
   */
  async geolocation(
    userGeo: UserGeo,
    establishmentIds: string[],
  ): Promise<DistanceOutput[]> {
    const { latitude: userLon, longitude: userLat } = userGeo;
    const OSMR_HOST = process.env.OSMR_HOST;

    const results = await Promise.all(
      establishmentIds.map(async (estId) => {
        const estRec = await this.prismaService.location.findFirst({
          where: { address: { establishments: { some: { id: estId } } } },
        });
        if (!estRec) {
          console.error(`Estabelecimento ${estId} sem localização`);
          return { establishmentId: estId, distance: -1 };
        }
        const estLon = Number(estRec.x);
        const estLat = Number(estRec.y);

        const url = OSMR_HOST
          .replace('userLon', userLon.toString())
          .replace('userLat', userLat.toString())
          .replace('estLon',  estLon.toString())
          .replace('estLat',  estLat.toString());

        try {
          const response = await axios.get(url);
          const dist = response.data?.routes?.[0]?.legs?.[0]?.distance;

          if (typeof dist !== 'number') return { establishmentId: estId, distance: -1 };
          return { establishmentId: estId, distance: dist };
        } catch (err) {
          console.error(`[GeolocationService] erro ao calcular distância para ${estId}:`);
          return { establishmentId: estId, distance: -1 };
        }
      }),
    );

    return results;
  }
}
