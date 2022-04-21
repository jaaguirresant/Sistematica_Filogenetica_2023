# Inferencia filogenética con Máxima Parsimonia

# 1. Para este ejercicio usaremos los paquetes ape, phangorn y seqinr.

setwd("working directory") 
library(ape)
library(phangorn)
library(seqinr)

# 2. Cargamos la matriz de ADN en formato Nexus con la función "read.phyDat", ya que phangorn requiere que la matriz sea de clae phyDat.

Primates_ADN <- read.phyDat("ADN.nex", format = "nexus")
class(Primates_ADN)

# 3. Antes de hacer los análisis de parsimonia, Phangorn requiere un árbol inicial para comenzar a hacer las búsquedas. Una solución es generar un árbol rápido usando el la función "random-addition": 

Primates_RA <- random.addition(Primates_ADN)
Primates_RA
Primates_RA <-root(Primates_RA, outgroup="Lemur_catta", resolve.root=TRUE) # enraizamos el árbol con "root"
plot(Primates_RA)

# La función "pasimony" nos permite calcular la longitud del árbol con base en la matriz de datos:

parsimony(Primates_RA,Primates_ADN)

# 4. Otra opción es generar un árbol usando métodos de distancias como UPGMA o Neighbor-Joining. Aunque se puede trabajar con las distancias crudas, es mejor transformarlas a distancias evolutivas usando un modelo evolutivo de sustitución (veremos esto en detalle en la próxima clase). Para efectos demostrativos, usaremos el modelo "F81" y la función "dist.ml" del paquete phangorn para construir la matriz de distancias corregidas: 

dna_dist <- dist.ml(Primates_ADN, model="F81") # Esta es la matriz de distancias corregidas

# Generamos el fenograma con UPGMA primero
Primates_UPGMA <- upgma(dna_dist)
plot(Primates_UPGMA, main="UPGMA")
parsimony(Primates_UPGMA,Primates_ADN) # Calculamos la longitud de este árbol

# y generamos uno con Neighbor-Joining
Primates_NJ  <- NJ(dna_dist)
plot(Primates_NJ, main = "Neighbor Joining")
parsimony(Primates_NJ,Primates_ADN) # Calculamos la longitud de este árbol

# 5. Usaremos ahora sí las funciones "optim.parsimony" y "pratchet" para inferir el o los árboles más parsimoniosos a partir de la matriz de datos y usando árbol iniciales.

# 5.1 La función "optim.parsimony" es un método rápido pero limitado. La función requiere un árbol inicial, optimiza los caracteres usando parsimonia de fitch por default, usa el método SPR para perturbar el árbol y recupera únicammente uno de los árboles más parsimoniosos.

Primates_optim <- optim.parsimony(Primates_NJ, Primates_ADN)
Primates_optim
Primates_optim <-root(Primates_optim, outgroup="Lemur_catta", resolve.root=TRUE)
plot(Primates_optim)

# 5.2. Para matrices con muchos datos y más de 100 terminales se puede usar la metodología Ratchet. Para esto se usa la función "pratchet"

Primates_pratchet <- pratchet(Primates_ADN, all=TRUE)
Primates_pratchet
str(Primates_pratchet)
Primates_pratchet <-root(Primates_pratchet, outgroup="Lemur_catta", resolve.root=TRUE)
plot(Primates_pratchet)

plot(Primates_pratchet[[1]])
plot(Primates_pratchet[[2]])

# Comparemos ahora las longitudes de todos los árboles que hemos generado:
parsimony(c(Primates_RA,Primates_NJ, Primates_UPGMA, Primates_optim, Primates_pratchet), Primates_ADN)

# TAREA: repetir este taller con sus matrices de datos. Si tienen múltiples marcadores, realizar el ejercicio con solo uno de ellos.
