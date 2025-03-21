import { Field, ObjectType } from '@nestjs/graphql';
import { IsString } from 'class-validator';

@ObjectType('DownloadImage')
export class DownloadImage {
  @IsString()
  @Field(() => String)
  name: string;

  @IsString()
  @Field(() => String)
  image: string;
}
