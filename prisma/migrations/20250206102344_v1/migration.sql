-- CreateEnum
CREATE TYPE "Operation" AS ENUM ('list', 'get', 'create', 'update', 'delete', 'search', 'onCreate', 'onUpdate', 'onDelete');

-- CreateEnum
CREATE TYPE "RoleTypes" AS ENUM ('ADMIN', 'SUPPLIER', 'USER');

-- CreateTable
CREATE TABLE "Role" (
    "_id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "roleType" "RoleTypes" NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Role_pkey" PRIMARY KEY ("_id")
);

-- CreateTable
CREATE TABLE "Permission" (
    "_id" TEXT NOT NULL,
    "modelName" TEXT NOT NULL,
    "allowedOperations" "Operation"[],
    "idRolePermissions" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Permission_pkey" PRIMARY KEY ("_id")
);

-- CreateTable
CREATE TABLE "User" (
    "_id" TEXT NOT NULL,
    "idUserRole" TEXT NOT NULL,
    "userStatus" TEXT NOT NULL DEFAULT 'Active',
    "roleType" "RoleTypes",
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "phoneNumber" TEXT NOT NULL,
    "picture" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "User_pkey" PRIMARY KEY ("_id")
);

-- CreateTable
CREATE TABLE "Search" (
    "_id" TEXT NOT NULL,
    "idUser" TEXT NOT NULL,
    "question" TEXT NOT NULL,
    "searchFeedback" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Search_pkey" PRIMARY KEY ("_id")
);

-- CreateTable
CREATE TABLE "Supplier" (
    "_id" TEXT NOT NULL,
    "idUser" TEXT NOT NULL,
    "taxId" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Supplier_pkey" PRIMARY KEY ("_id")
);

-- CreateTable
CREATE TABLE "Establishment" (
    "_id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "businessHours" TEXT NOT NULL,

    CONSTRAINT "Establishment_pkey" PRIMARY KEY ("_id")
);

-- CreateTable
CREATE TABLE "Product" (
    "_id" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "brand" TEXT NOT NULL,
    "model" TEXT NOT NULL,
    "material" TEXT NOT NULL,
    "imagens" TEXT NOT NULL,
    "isAvaliable" BOOLEAN NOT NULL DEFAULT true,
    "quantity" INTEGER NOT NULL,
    "idSupplier" TEXT NOT NULL,
    "idEstablishment" TEXT NOT NULL,

    CONSTRAINT "Product_pkey" PRIMARY KEY ("_id")
);

-- CreateTable
CREATE TABLE "ProductDimension" (
    "idProduct" TEXT NOT NULL,
    "length" DOUBLE PRECISION NOT NULL,
    "height" DOUBLE PRECISION NOT NULL,
    "width" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "ProductDimension_pkey" PRIMARY KEY ("idProduct")
);

-- CreateTable
CREATE TABLE "Address" (
    "_id" TEXT NOT NULL,
    "idEstablishment" TEXT NOT NULL,
    "street" TEXT NOT NULL,
    "number" INTEGER NOT NULL,
    "complement" TEXT NOT NULL,
    "neighbourhood" TEXT NOT NULL,
    "zipCode" TEXT NOT NULL,
    "city" TEXT NOT NULL,
    "state" TEXT NOT NULL,

    CONSTRAINT "Address_pkey" PRIMARY KEY ("_id")
);

-- CreateTable
CREATE TABLE "Location" (
    "_id" TEXT NOT NULL,
    "x" DOUBLE PRECISION NOT NULL,
    "y" DOUBLE PRECISION NOT NULL,
    "z" DOUBLE PRECISION NOT NULL,

    CONSTRAINT "Location_pkey" PRIMARY KEY ("_id")
);

-- CreateTable
CREATE TABLE "_ProductToSupplier" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL,

    CONSTRAINT "_ProductToSupplier_AB_pkey" PRIMARY KEY ("A","B")
);

-- CreateTable
CREATE TABLE "_ProductToSearch" (
    "A" TEXT NOT NULL,
    "B" TEXT NOT NULL,

    CONSTRAINT "_ProductToSearch_AB_pkey" PRIMARY KEY ("A","B")
);

-- CreateIndex
CREATE UNIQUE INDEX "Supplier_idUser_key" ON "Supplier"("idUser");

-- CreateIndex
CREATE UNIQUE INDEX "Address_idEstablishment_key" ON "Address"("idEstablishment");

-- CreateIndex
CREATE INDEX "_ProductToSupplier_B_index" ON "_ProductToSupplier"("B");

-- CreateIndex
CREATE INDEX "_ProductToSearch_B_index" ON "_ProductToSearch"("B");

-- AddForeignKey
ALTER TABLE "Permission" ADD CONSTRAINT "Permission_idRolePermissions_fkey" FOREIGN KEY ("idRolePermissions") REFERENCES "Role"("_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "User" ADD CONSTRAINT "User_idUserRole_fkey" FOREIGN KEY ("idUserRole") REFERENCES "Role"("_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Search" ADD CONSTRAINT "Search_idUser_fkey" FOREIGN KEY ("idUser") REFERENCES "User"("_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Supplier" ADD CONSTRAINT "Supplier_idUser_fkey" FOREIGN KEY ("idUser") REFERENCES "User"("_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Product" ADD CONSTRAINT "Product_idEstablishment_fkey" FOREIGN KEY ("idEstablishment") REFERENCES "Establishment"("_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "ProductDimension" ADD CONSTRAINT "ProductDimension_idProduct_fkey" FOREIGN KEY ("idProduct") REFERENCES "Product"("_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Address" ADD CONSTRAINT "Address_idEstablishment_fkey" FOREIGN KEY ("idEstablishment") REFERENCES "Establishment"("_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Location" ADD CONSTRAINT "Location__id_fkey" FOREIGN KEY ("_id") REFERENCES "Address"("_id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_ProductToSupplier" ADD CONSTRAINT "_ProductToSupplier_A_fkey" FOREIGN KEY ("A") REFERENCES "Product"("_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_ProductToSupplier" ADD CONSTRAINT "_ProductToSupplier_B_fkey" FOREIGN KEY ("B") REFERENCES "Supplier"("_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_ProductToSearch" ADD CONSTRAINT "_ProductToSearch_A_fkey" FOREIGN KEY ("A") REFERENCES "Product"("_id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "_ProductToSearch" ADD CONSTRAINT "_ProductToSearch_B_fkey" FOREIGN KEY ("B") REFERENCES "Search"("_id") ON DELETE CASCADE ON UPDATE CASCADE;
