-- CreateTable
CREATE TABLE "City" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "country" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "City_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "WeatherQuery" (
    "id" SERIAL NOT NULL,
    "cityId" INTEGER NOT NULL,
    "temperature" DOUBLE PRECISION NOT NULL,
    "feelsLike" DOUBLE PRECISION NOT NULL,
    "humidity" INTEGER NOT NULL,
    "description" TEXT NOT NULL,
    "windSpeed" DOUBLE PRECISION NOT NULL,
    "queriedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "WeatherQuery_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "City_name_key" ON "City"("name");

-- AddForeignKey
ALTER TABLE "WeatherQuery" ADD CONSTRAINT "WeatherQuery_cityId_fkey" FOREIGN KEY ("cityId") REFERENCES "City"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
