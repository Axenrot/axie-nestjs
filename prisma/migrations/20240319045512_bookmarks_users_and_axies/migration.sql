-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "email" TEXT NOT NULL,
    "hash" TEXT NOT NULL,
    "firstName" TEXT,
    "lastName" TEXT,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Bookmark" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "link" TEXT NOT NULL,

    CONSTRAINT "Bookmark_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Axie" (
    "id" SERIAL NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "axieClass" TEXT NOT NULL,
    "bodyPartsId" INTEGER NOT NULL,

    CONSTRAINT "Axie_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BodyParts" (
    "id" SERIAL NOT NULL,
    "eyes" TEXT NOT NULL,
    "ears" TEXT NOT NULL,
    "horn" TEXT NOT NULL,
    "mouth" TEXT NOT NULL,
    "back" TEXT NOT NULL,
    "tail" TEXT NOT NULL,

    CONSTRAINT "BodyParts_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Axie" ADD CONSTRAINT "Axie_bodyPartsId_fkey" FOREIGN KEY ("bodyPartsId") REFERENCES "BodyParts"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
