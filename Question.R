## Csomag telepítése
install.packages("questionr")
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

## Feldolgozáshoz
install.packages("Dire")
