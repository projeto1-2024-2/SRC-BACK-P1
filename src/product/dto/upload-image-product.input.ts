import { Field, ID, InputType } from '@nestjs/graphql';
import { IsOptional, IsString } from 'class-validator';
import { FileUpload, GraphQLUpload } from 'graphql-upload-ts';

@InputType('UploadImageProductInput')
export class UploadImageProductInput {
  @IsString()
  @Field(() => ID)
  id: string;

  @IsOptional()
  @Field(() => GraphQLUpload, { nullable: true })
  image: FileUpload;
}
