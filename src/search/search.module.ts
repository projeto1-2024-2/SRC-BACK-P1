import { Module } from '@nestjs/common';
import { SearchResolver } from './search.resolver';
import { SearchService } from './search.service';
import { NlpModule } from '../nlp/nlp.module';
import { ProductModule } from '../product/product.module';
import { ElasticsearchModule } from '@nestjs/elasticsearch';

@Module({
  providers: [SearchResolver, SearchService],
  imports: [
    NlpModule,
    ElasticsearchModule.registerAsync({
      useFactory: () => ({
        node: 'http://172.20.0.1:9200',
        auth: {
          apiKey:
            'bjAza0JaVUJPWXZKaUIzSEI0V3g6Q0dLaFh4QVk4RVN4RHNyLUpDWmZfdw==',
        },
      }),
    }),
  ],
  exports: [SearchResolver, SearchService],
})
export class SearchModule {}
