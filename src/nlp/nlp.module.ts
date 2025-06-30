import { Module } from '@nestjs/common';
import { NlpService } from './nlp.service';
import { UserModule } from 'src/user/user.module';

@Module({
  providers: [NlpService],
  exports: [NlpService],
  imports: [UserModule],
})
export class NlpModule {}
