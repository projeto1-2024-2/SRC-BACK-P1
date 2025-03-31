import { forwardRef, Module } from '@nestjs/common';
import { SearchResolver } from './search.resolver';
import { SearchService } from './search.service';
import { NlpModule } from '../nlp/nlp.module';
import { ProductModule } from '../product/product.module';

@Module({
  providers: [SearchResolver, SearchService],
  imports: [NlpModule, forwardRef(() => ProductModule)],
  exports: [SearchResolver, SearchService],
})
export class SearchModule {}
