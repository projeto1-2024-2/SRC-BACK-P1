import { Module } from '@nestjs/common';
import { SearchResolver } from './search.resolver';
import { SearchService } from './search.service';
import { NlpModule } from '../nlp/nlp.module';
import { ElasticsearchModule } from '@nestjs/elasticsearch';

@Module({
  providers: [SearchResolver, SearchService],
  imports: [
    NlpModule,
    ElasticsearchModule.registerAsync({
      useFactory: () => ({
        node: process.env.ELASTIC_NODE_URL,
        auth: {
          apiKey: process.env.ELASTIC_API_KEY,
        },
      }),
    }),
  ],
  exports: [SearchResolver, SearchService],
})
export class SearchModule {}
