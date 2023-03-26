# Sistematica Filogenetica 2023

# MÓDULO INFERENCIA FILOGENÉTICA

## Objetivos

1. Aprender las bases metodológicas de los principales métodos de inferencia filogenética a partir de matrices de caracteres homólogos y evaluar críticamente los supuestos, virtudes y desventajas de estos métodos.

2. Conocer los principios estadísticos para medición de la confianza de las hipótesis filogenéticas.  

3. Adquirir destrezas computacionales para llevar a cabo análisis de inferencia filogenética a partir de matrices de caracteres empíricas.

## Competencias

1. Habilidad de inferir e interpretar críticamente hipótesis de relaciones filogenéticas en cualquier grupo de organismos generadas bajo distintas metodologías a partir de matrices de caracteres.

2. Capacidad para interpretar fundamentos de la biología evolutiva en un árbol filogenético generado a partir de matrices de caracteres empíricas.

3. Entendimiento de la importancia de la inferencia filogenética para abordar problemas biológicos en un contexto evolutivo.

## Estructura general del módulo

### Preparación

Este módulo ha sido diseñado para estudiantes del curso de posgrado "Sistemática Filogenética y Nomenclatura Botánica/Zoológica" del programa de Maestría en Ciencias-Biología de la Universidad Nacional de Colombia. Los estudiantes inscritos en este curso ya debieron haber tomado cinco semanas de temas introductorios sobre evolución y sistemática filogenética para poder seguir con los contenidos de este módulo.

#### Los requerimientos y materiales básicos para llevar a cabo este módulo son los siguientes:

Computador o laptop con los siguientes programas instalados: 
- Editor de texto (recomendados notepad++ para Windows y Atom para Mac).
- [Mesquite](https://www.mesquiteproject.org/). Útil para construir y/o visualizar matrices de caracteres.
- R y R Studio (bajar los paquetes: Ape, Claddis, Phangorn, Phytools).
- [TNT](http://www.lillo.org.ar/phylogeny/tnt/). GUI solo para Windows. Para análisis de Máxima Parsimonia.
- [jmodelTest](https://github.com/ddarriba/jmodeltest2). Para selección de modelos evolutivos de secuencias de nucleótidos.
- [RAxML-GUI](https://antonellilab.github.io/raxmlGUI/). Para análisis de Máxima Verosimilitud.
- [IQTree](http://www.iqtree.org/). Para análisis de Máxima Verosimilitud.
- [MrBayes](http://nbisweden.github.io/MrBayes/download.html). Para análisis de Inferencia Bayesiana.
- [BEAST 2](https://www.beast2.org/). Para análisis de Inferencia Bayesiana y tiempos de divergencia.
- [ASTRAL](https://github.com/smirarab/ASTRAL/blob/master/README.md). Para inferencia de árboles de especies a partir de árboles de genes.
- [FigTree](https://github.com/rambaut/figtree/releases). Para visualización y edición de árboles filogenéticos.
- [Tracer](https://github.com/beast-dev/tracer/releases/tag/v1.7.1). Para visualizar resultados de MCMC.

**Nota:** Es posible que usemos otros programas, pero les avisaré con tiempo. Todos los programas de inferencia filogenética vienen acompañados con sus respectivos tutoriales. Se sugiere seguirlos en su tiempo libre; no se limiten únicamente a los ejercicios de la clase.  

## Contenido

**[Clase 1.](/Clase_1/Clase_1.pdf)** Se hará un breve repaso de los recursos informáticos para construcción de matrices con editor de texto, el programa Mesquite y R. Para esta parte se deben descargar las siguientes matrices para este ejercicio: [ADN.tnt](/Clase_1/ADN.tnt), [morfologia.tnt](/Clase_1/morfologia.tnt),[morfologia.nex](/Clase_1/morfologia.nex), [ADN.nex](/Clase_1/ADN.nex), [ADN.phy](/Clase_1/ADN.phy), [ADN_1.nex](/Clase_1/ADN_1.nex), [ADN_2.nex](/Clase_1/ADN_2.nex). 

**[Ir al taller aquí](/Clase_1/Taller_matrices.md)**

En la segunda parte de la clase, se hará un breve repaso de R a través de un ejercicio de visualización y manipulación de archivos de árboles filogenéticos. Para esta parte de la clase haremos un ejercicio práctico en R para visualizar y manipular árboles filogenéticos 

**[Ir al script aquí](/Clase_1/Manipulacion_arboles.R)**

**_NOTA:_** Leer los siguientes artículos para la clase del miércoles y jueves:

- Argumentación Hennigiana y Máxima Parsimonia: [Wiley & Lieberman 2011 - Capítulo 6](/Clase_1/MP_Wiley_Lieberman.pdf)

- [González 1999](/Clase_1/Gonzalez_1999_Aristolochia.pdf)

#

[Fuente de la imagen](https://www.researchgate.net/publication/330808851/figure/fig1/AS:721682977275905@1549074038961/Effect-of-introgression-and-incomplete-lineage-sorting-ILS-in-molecular.png)

#

**[Clase 2](/clase_2/clase_2.pdf). Inferencia Filogenética: Máxima parsimonia y búsqueda de árboles óptimos** En esta clase se presenta el primer método que incorpora explícitamente un criterio de optimalidad: la Máxima Parsimonia. Además, e explica el problema de la búsqueda de árboles óptimos en relación al número de taxones, así como las estrategias exactas y heurísicas para explorar el "espacio" de árboles posibles y árboles óptimos. (Descargar diapositivas [aquí](/clase_2/clase_2.pdf))

<p align="center">
  <img src="https://github.com/jaaguirresant/Sistematica-Filogenetica/blob/master/Clase_3/Strict.png" width="250" height="200" />
</p>

Como complemento de la clase, cada estudiante deberá hacer el siguiente taller y subirlo al Drive a más tardar el lunes 13 de marzo de 2023:

**[Ir al taller aquí](/clase_2/Taller_2.md)**

#

**Clase 3. Maxima Parsimonia en la practica** 


1. [Taller artículo González (1999)](/clase_3/Taller_Lectura_Gonzalez_1999.md). Subir las respuestas al Drive a más tardar el lunes 13 de marzo.

2. Corta práctica computacional de inferencia filogenética con Máxima Parsimonia usando el programa TNT y el paquete Phangorn de R. **[ir al taller aquí](/clase_3/Taller_MP2.md)**


**_NOTA:_** Para la clase del jueves y lunes leer:

1. Modelos evolutivos: [Strimmer & Haeseler 2009](/clase_3/Modelos.pdf).

2. Filogenética paramétrica: [Wiley & Lieberman 2011 - Capítulo 7](/clase_3/Parametric_Phylogenetics.pdf).

3. Atracción de ramas largas: [Philippe et al. 2005](/clase_3/LBA_2005.pdf).

#
**Clase 4. Modelos evolutivos de sustitución.** Esta clase se destinan a entender los conceptos básicos del uso de modelos evolutivos explícitos para la inferencia filogenética usando la máxima verosimilitud como criterio de opimalidad ([Descargar diapositivas aquí](/clase_4/clase_4.pdf)). Como parte práctica, se hará un ejercicio demostrativo sobre la escogencia de modelos usando jModelTest y R ([ver script aquí](/clase_4/Taller_Modelos.md)).

<p align="center">
  <img src="https://github.com/jaaguirresant/Sistematica-Filogenetica/blob/master/clase_7/Imagen_c7.jpg" width="250" height="270" />
</p>

#
**Clases 5 y 6. Máxima Verosimilitud** Estas clases se dividen en dos partes:

1. Charla sobre los fundamentos de la máxima verosimilitud como criterio de opimalidad ([Descargar diapositivas aquí](/Clase_5/clase_5.pdf)). 

   - **Tarea.** Realizar los ejercicios del siguiente taller: [TALLER MV](/Clase_5/Taller_ML_1.md)

2. Taller de software para Máxima Verosimilitud: 

- Máxima verosimilitud en R [ir al Script de R aquí](/Clase_5/ML.R). Para este taller usaremos la matriz de ADN de primates del siguiente enlace: [ADN.nex](/Clase_1/ADN.nex). 
- Máxima verosimilitud en RAxML-GUI

#

**Clase 7. Inferencia Bayesiana.** El objetivo de esta clase es el de aprender como implementar la estadística bayesiana en el contexto de la inferencia filogenética. Para esto, presentaré una corta clase de conceptos fundamentales (bajar diapositivas [aquí](/Clase_7/clase_9.pdf) y haremos un ejercicio práctico de inferencia filogenética con el programa [BEAST](https://www.beast2.org/).

<p align="center">
  <img src="https://anabelforte.com/wp-content/uploads/2020/04/Thomas_Bayes.gif" width="250" height="270" />
</p>

Para la práctica usaremos la matriz [ADN.nex](/Clase_1/ADN.nex) y analizaremos los resultados con los programas : [FigTree](https://github.com/rambaut/figtree/releases) y [Tracer](https://github.com/beast-dev/tracer/releases/tag/v1.7.1).

**Nota:** La siguiente lectura es un excelente complemento para la clase: [Huelsenbeck et al (2002)](/Clase_7/Bayesiano_2.pdf)

**Tarea:** Leer para la clase del lunes 27 de marzo el siguiente artículo: [Sanderson & Schauffer (2002)](/Clase_7/Lectura.pdf).

#

**Clase 8. Evaluación crítica de hipótesis filogenéticas** En esta clase estudiaremos de forma crítica algunos aspectos metodológicos y biológicos generales que deben tenerse en cuenta en los análisis de inferencia filogenética. Para esto haremos una corta clase donde mencionaremos estos aspectos y algunas ayudas metodológicas para sobrellevarlos ([bajar diaposistivas acá](/Clase_8/clase_8.pdf)). La clase se complementa con un taller sobre los temas aprendidos ([Ir al Taller](/Clase_8/Taller_clase_8.md)).

#

