import { v4 } from 'uuid';
import { join } from 'node:path';
import { existsSync, mkdirSync, createWriteStream } from 'node:fs';
import { InternalServerErrorException } from '@nestjs/common';

import { FileUpload } from 'graphql-upload-ts';

export const uploadFileStream = async (
  establishmentId: string,
  productId: string,
  file: Promise<FileUpload>,
) => {
  const { filename, createReadStream } = await file;

  const fileName = v4();
  const StoragePath = join(__dirname, '..', '..', 'storage');
  const establishmentPath = join(StoragePath, establishmentId);
  const productPath = join(establishmentPath, productId);

  if (!existsSync(StoragePath)) {
    mkdirSync(StoragePath, { recursive: true });
  }
  if (!existsSync(establishmentPath)) {
    mkdirSync(establishmentPath, { recursive: true });
  }
  if (!existsSync(productPath)) {
    mkdirSync(productPath, { recursive: true });
  }

  const filePath = join(
    productPath,
    `${productId}${getBaseFileExtension(filename)}`,
  );

  const writeStream = createWriteStream(filePath);

  try {
    const readStream = createReadStream();
    await new Promise<void>((resolve, reject) => {
      readStream
        .pipe(writeStream)
        .on('finish', () => resolve())
        .on('error', (error) => reject(error));
    });

    return filename;
  } catch (error) {
    console.log(error);
    throw new InternalServerErrorException('Failed to save image');
  }
};

export function getBaseFileExtension(filename: string): string {
  const ext = filename.split('.').pop();
  return ext ? `.${ext}` : '';
}
