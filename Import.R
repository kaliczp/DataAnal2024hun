## Adat beolvasás
## Csak egyszer install.packages("readxl")
library(readxl)
## Excel beolvasása
lab = as.data.frame(read_excel("laboradatok.xlsx"))
lab <- as.data.frame(read_excel("laboradatok.xlsx"))

## más objektumok
a <- 4
b <- "élakfj"
## Objektumok listája
ls()
## Objektumok struktúrája
str(lab)
str(a)
## Összegzést adó függvény
summary(lab)

## Látható fájlok listázása
dir()

## Az excelből szöveges formátumba elmentett adatokat betölteni
lab1 <- read.table("laboradatok.csv", fill = TRUE, sep = ";")
str(lab1)
