import { Field, ID, InputType } from '@nestjs/graphql';
import { FileUpload, GraphQLUpload } from 'graphql-upload-ts';

@InputType('UploadImageProductInput')
export class UploadImageProductInput {
  @Field(() => String)
  id: string;

  @Field(() => GraphQLUpload, { nullable: false })
  image: FileUpload;
}
