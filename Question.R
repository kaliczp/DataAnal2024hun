## Csomag telepítése
install.packages("questionr")
install.packages("survey")
## Csomag betöltése

library(questionr)
help.start()
## fertility kézikönyve adat nézegetés
data(fertility)
households
as.data.frame(households)
describe(households)
describe(women)
describe(women$residency)

## multi table
set.seed(1337)
sex <- sample(c("Man","Woman"),100,replace=TRUE)
jazz <- sample(c(0,1),100,replace=TRUE)
rock <- sample(c(TRUE, FALSE),100,replace=TRUE)
electronic <- sample(c("Y","N"),100,replace=TRUE)
weights <- runif(100)*2
df <- data.frame(sex,jazz,rock,electronic,weights)

## Tábla
multi.table(df[,c("jazz", "rock","electronic")], true.codes=list("Y"))

# factor
data(hdv2003)
freq(hdv2003$qualif)

library(survey)
library(ggplot2)
data(api)
dstrat <- svydesign(
    id = ~1, strata = ~stype,
    weights = ~pw, data = apistrat,
    fpc = ~fpc
  )
ggsurvey(dstrat) +
    aes(x = cnum, y = dnum) +
    geom_count()

### Saját adatokkal
## Import
library(readxl)
Sajat <- read_excel("Gyermekek szabad levegőn töltött ideje (válaszok).xlsx")
freq(Sajat[,1])
freq(Sajat[,2])
freq(Sajat[,3])
freq(Sajat[,4])
freq(Sajat[,5])
freq(Sajat[,6])
freq(Sajat[,7])
freq(Sajat[,8])
freq(Sajat[,9]) ## Lényegi válasz



## Feldolgozáshoz
install.packages("Dire")
