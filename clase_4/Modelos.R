# Abrir los paquetes
library(ape)
library(phangorn)

# Leer los datos en formato phyDat
primates <- read.phyDat("ADN.nex", format = "nexus")

# Usar la función modelTest (esta función calcula un árbol de NJ por default)

mt <- modelTest(primates)

# Veamos los valores de verosimilitud y las pruebas estadísticas comparativas
print(mt)

mt[order(mt$AICc),] # Organizamos los datos de acuerdo a su valor de AICc (de menor a mayor)
bestmodel <- mt$Model[which.min(mt$AICc)] # aislamos el mejor modelo
bestmodel

# Si queremos ver las estimaciones de los parámetros del mejor modelo, podemos extraer la información así:

env <- attr(mt, "env")
ls(env=env)
HKY_G <- get("HKY+G", env) 
eval(HKY_G, env=env)
