import { readdirSync, readFileSync } from 'node:fs';
import { join } from 'node:path';

export const downloadFileStream = (
  establishmentId: string,
  productId: string,
): { name: string; image: string }[] => {
  const dirPath = join(process.cwd(), 'storage', establishmentId, productId);
  const imagesFiles = readdirSync(dirPath);

  const images = imagesFiles.map((file) => {
    const imagePath = join(dirPath, file);
    const imageBuffer = readFileSync(imagePath);
    const base64Image = imageBuffer.toString('base64');

    return {
      name: file,
      image: base64Image,
    };
  });

  return images;
};
