## Vektor data.frame-bő.
summary(lab1$Ca..mg.g.)
summary(lab1$Ca...mg.g...sz.a..)

## Vektor első eleme
lab1$Ca...mg.g...sz.a..[1]
## Az első 10 elem kettőspont operátorral
lab1$Ca...mg.g...sz.a..[1:10]
## Ugyan ez vektorral
lab1$Ca...mg.g...sz.a..[c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10)]
## Vétletlen szerű elemek
lab1$Ca...mg.g...sz.a..[c(1, 2, 3, 4, 5, 6, 7, 80, 90, 100)]
## Negatív index
lab1$Ca...mg.g...sz.a..[-854]
lab1$Ca...mg.g...sz.a..[-c(852:854)]
lab1$Ca...mg.g...sz.a..[-c(406:854)]
## Logikai kifejezssel
lab1$Ca...mg.g...sz.a.. > 0
lab1$Ca...mg.g...sz.a..[lab1$Ca...mg.g...sz.a.. > 0]
is.na(lab1$Ca...mg.g...sz.a..)
!is.na(lab1$Ca...mg.g...sz.a..)
lab1$Ca...mg.g...sz.a..[lab1$Ca...mg.g...sz.a.. > 0 & !is.na(lab1$Ca...mg.g...sz.a..)]

### EDA boxplot
boxplot(lab1$Ca..mg.g.)
boxplot(lab1$Ca..mg.g., lab1$Ca...mg.g...sz.a..)
boxplot(lab1$Ca..mg.g., lab1$Ca...mg.g...sz.a..[lab1$Ca...mg.g...sz.a.. > 0 & !is.na(lab1$Ca...mg.g...sz.a..)])

## Teljes adattábla
boxplot(lab1)
## Nem numerikus oszlopokat kidobtam indexszeléssel
boxplot(lab1[ ,-c(1:7,9,10) ])

## Plot finomhangolás
boxplot(lab1[ ,-c(1:7,9,10) ],main = "Boxplot")
par("mar")

pdf()
par(mar = c(9, 4.1, 0.2, 0.1), las = 2)
boxplot(lab1[ ,-c(1:7,9,10) ])
dev.off()

pdf("Boxplot.pdf", width= 10/2.54, height = 10/2.54)
par(mar = c(9, 4.1, 0.2, 0.1), las = 2)
boxplot(lab1[ ,-c(1:7,9,10) ], ylab = "CC [mg/g]")
dev.off()

png("Boxplot.png", width= 10, height = 10, units = "cm", res = 300)
par(mar = c(9, 4.1, 0.2, 0.1), las = 2)
boxplot(lab1[ ,-c(1:7,9,10) ], ylab = "CC [mg/g]")
dev.off()
