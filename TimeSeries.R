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
SopronDate <- as.Date("1869-12-31") + 1:56247

plot(SopronDate, TempSopron$ta, type = "l", xaxs = "i", ylab = "Hőmérséklet")

## Idősor előállítása
install.packages("xts")
library(xts)
SopronTempTS <- xts(TempSopron$ta, SopronDate)

plot(SopronTempTS)

## Indexelés
plot(SopronTempTS["2023"])
plot(SopronTempTS["2020/2023"])
plot(SopronTempTS["2022-11-01/2023-10-31"])

SopronMeanYrMax <- apply.yearly(SopronTempTS, max)
plot(SopronMeanYrMax)

## Plot összerakás
plot.zoo(SopronMeanYrMax, type = "l", xaxs = "i", ylab = "Hőmérséklet", lwd = 2, xlab = "", xaxt = "n")
axis(1, at = index(SopronMeanYrMax), lab = F)
axis.Date(1, at = as.Date(paste(c(seq(1875, 2000, by = 25), 2023), 12, 31, sep = "-")), format = "%Y")
grid(nx = NA, ny = NULL)

?axis.Date
