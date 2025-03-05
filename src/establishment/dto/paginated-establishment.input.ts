import { Field, ObjectType } from '@nestjs/graphql';
import { establishment } from 'src/shared/prismagraphql/establishment';

@ObjectType()
export class PaginatedEstablishment {
  @Field(() => [establishment])
  establishments: establishment[];

  @Field()
  hasMore: boolean;
}
