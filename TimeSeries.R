## Közvetelnül
unzzed <- unz("url","https://odp.met.hu/climate/homogenized_data/station_data_series/from_1870/mean_temperature/t_h_Sopron_18702023.csv.zip")
read.table(unzzed)

## Letöltés után a fenti url-ről
TempSopron <- read.table("ta_h_Sopron_18702023.csv", sep = ";", head = TRUE)
str(TempSopron)

plot(TempSopron$ta, type = "l", xaxs = "i", ylab = "Hőmérséklet")

## Dátum
Sys.Date()
as.Date("2024-10-31")
as.Date("2024-10-31") + 1:100

## Adatsor elej-vége
head(TempSopron)
tail(TempSopron)
SopronDate <- as.Date("1870-01-01") + 1:56247

plot(SopronDate, TempSopron$ta, type = "l", xaxs = "i", ylab = "Hőmérséklet")
