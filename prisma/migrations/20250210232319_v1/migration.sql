/*
  Warnings:

  - You are about to drop the column `picture` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `userStatus` on the `User` table. All the data in the column will be lost.
  - Added the required column `addressId` to the `User` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "StatusEnum" AS ENUM ('ACTIVE', 'INACTIVE');

-- AlterTable
ALTER TABLE "User" DROP COLUMN "picture",
DROP COLUMN "userStatus",
ADD COLUMN     "addressId" TEXT NOT NULL,
ADD COLUMN     "image" BYTEA;

-- CreateTable
CREATE TABLE "Product" (
    "id" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "brand" TEXT NOT NULL,
    "imagens" JSONB,
    "isAvaliable" BOOLEAN NOT NULL DEFAULT true,
    "quantity" INTEGER NOT NULL DEFAULT 0,
    "establishmentId" TEXT NOT NULL,
    "category" TEXT,
    "status" "StatusEnum" NOT NULL DEFAULT 'ACTIVE',
    "price" DECIMAL(65,30) NOT NULL,

    CONSTRAINT "Product_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Location" (
    "addressId" TEXT NOT NULL,
    "x" BIGINT NOT NULL,
    "y" BIGINT NOT NULL,
    "z" BIGINT NOT NULL,

    CONSTRAINT "Location_pkey" PRIMARY KEY ("addressId")
);

-- CreateTable
CREATE TABLE "Supplier" (
    "id" TEXT NOT NULL,
    "userId" TEXT NOT NULL,
    "taxId" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "establishmentId" TEXT,

    CONSTRAINT "Supplier_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Establishment" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "operatingHours" TEXT NOT NULL,
    "commercialPhone" TEXT NOT NULL,
    "taxId" TEXT NOT NULL,
    "addressId" TEXT NOT NULL,

    CONSTRAINT "Establishment_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Address" (
    "id" TEXT NOT NULL,
    "street" TEXT NOT NULL,
    "number" INTEGER NOT NULL,
    "complement" TEXT NOT NULL,
    "neighbourhood" TEXT NOT NULL,
    "zipCode" TEXT NOT NULL,
    "city" TEXT NOT NULL,
    "state" TEXT NOT NULL,

    CONSTRAINT "Address_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "ProductDimension" (
    "productId" TEXT NOT NULL,
    "length" DOUBLE PRECISION,
    "height" DOUBLE PRECISION,
    "width" DOUBLE PRECISION,

    CONSTRAINT "ProductDimension_pkey" PRIMARY KEY ("productId")
);

-- CreateTable
CREATE TABLE "Conversation" (
    "id" TEXT NOT NULL,
    "returnedProducts" JSONB,
    "searchRating" INTEGER DEFAULT 0,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Conversation_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Context" (
    "userId" TEXT NOT NULL,
    "conversationId" TEXT NOT NULL,
    "searchQuery" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Context_pkey" PRIMARY KEY ("userId","conversationId")
);

-- CreateTable
CREATE TABLE "_ProductToSupplier" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL,

    CONSTRAINT "_ProductToSupplier_AB_pkey" PRIMARY KEY ("A","B")
);

-- CreateIndex
CREATE UNIQUE INDEX "Supplier_userId_key" ON "Supplier"("userId");

-- CreateIndex
CREATE INDEX "_ProductToSupplier_B_index" ON "_ProductToSupplier"("B");

-- AddForeignKey
ALTER TABLE "User" ADD CONSTRAINT "User_addressId_fkey" FOREIGN KEY ("addressId") REFERENCES "Address"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Product" ADD CONSTRAINT "Product_establishmentId_fkey" FOREIGN KEY ("establishmentId") REFERENCES "Establishment"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Location" ADD CONSTRAINT "Location_addressId_fkey" FOREIGN KEY ("addressId") REFERENCES "Address"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Supplier" ADD CONSTRAINT "Supplier_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Supplier" ADD CONSTRAINT "Supplier_establishmentId_fkey" FOREIGN KEY ("establishmentId") REFERENCES "Establishment"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Establishment" ADD CONSTRAINT "Establishment_addressId_fkey" FOREIGN KEY ("addressId") REFERENCES "Address"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ProductDimension" ADD CONSTRAINT "ProductDimension_productId_fkey" FOREIGN KEY ("productId") REFERENCES "Product"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Context" ADD CONSTRAINT "Context_conversationId_fkey" FOREIGN KEY ("conversationId") REFERENCES "Conversation"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Context" ADD CONSTRAINT "Context_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_ProductToSupplier" ADD CONSTRAINT "_ProductToSupplier_A_fkey" FOREIGN KEY ("A") REFERENCES "Product"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_ProductToSupplier" ADD CONSTRAINT "_ProductToSupplier_B_fkey" FOREIGN KEY ("B") REFERENCES "Supplier"("id") ON DELETE CASCADE ON UPDATE CASCADE;
