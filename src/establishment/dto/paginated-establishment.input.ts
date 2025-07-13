import { Field, ObjectType } from '@nestjs/graphql';
import { establishment } from '../../shared/prismagraphql/establishment';

@ObjectType()
export class PaginatedEstablishment {
  @Field(() => [establishment])
  establishments: establishment[];

  @Field()
  hasMore: boolean;
}
