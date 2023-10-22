#                         LAURA CALERO PALOMO 


# ENUNCIADOS DEL TRABAJO DE TEORÍA DE LA DECISIÓN .

# PROBLEMA 1: Aplicar los criterios de decisión bajo incertidumbre a los 
# problemas cuya matriz de valores numéricos vienen dadas en las siguientes 
# tablas:

# (a) Tabla de beneficios (favorable)

matrix(c(4,3,6,7,5,5,3,-2,4,6,-9,9,2,5,9,0,1,2,5,3),5,4)

# (b) Tabla de costos (desfavorable)

matrix(c(3,2,6,7,9,0,0,-1,-3,5,-5,4,4,6,7,0,2,2,1,0,9,8,7,3,4,4,-2,-1,5,-8),6,5)


# En primer lugar, cargamos el fichero R donde se encuentran todas las funciones
# que vamos a necesitar para hacer los ejercicios.

source("teoriadecision_funciones_incertidumbre.R")


# (a) Ahora para aplicar los criterios de decisión bajo incertidumbre, vamos a 
#     crear antes una tabla para los casos favorables:


# · Tabla favorable:

Tabla1=crea.tablaX(c(4,3,6,7,5,5,3,-2,4,6,-9,9,2,5,9,0,1,2,5,3), numalternativas=5,
                   numestados = 4)

Tabla1


## · Criterio de Wald:

criterio.Wald(Tabla1,favorable =TRUE)

#  - Ponemos TRUE porque estamos trabajando con una tabla de beneficios 


#  - La mejor alternativa según el criterio de Wald es la "d1", siendo el valor óptimo el 3.


## · Criterio Optimista:

criterio.Optimista(Tabla1,T)

#  - La mejor alternativa según el criterio Optimista es la "d3" y "d4", siendo el valor óptimo el 9


## · Criterio de Hurwicz :

criterio.Hurwicz(Tabla1, alfa= 0.6, T)

#  - La mejor alternativa según el criterio de Hurwicz es la "d1" siendo el valor óptimo el 5.4

criterio.Hurwicz.General(Tabla1)

dibuja.criterio.Hurwicz(Tabla1)

dibuja.criterio.Hurwicz_Intervalos(Tabla1,T,T)


## · Criterio Savage:

criterio.Savage(Tabla1,T)

#  - La mejor alternativa según el criterio de Savage es la "d1" siendo el valor óptimo el 3.


## · Criterio de LaPlace:

criterio.Laplace(Tabla1,T)

#  - La mejor alternativa según el criterio de LaPlace es la "d1" siendo el valor óptimo el 5.


## · Criterio de Punto Ideal

criterio.PuntoIdeal (Tabla1,T)

# - La mejor alternativa según el criterio de Punto Ideal es la "d1" siendo el valor óptimo el 4.795832


## · Todos los criterios: 

criterio.Todos(Tabla1,0.6, T)


#                 e1 e2 e3 e4 Wald Optimista Hurwicz Savage Laplace Punto Ideal
# d1               4  3  6  7    3         7     5.4      3    5.00       4.796
# d2               5  5  3 -2   -2         5     2.2     11    2.75      12.570
# d3               4  6 -9  9   -9         9     1.8     18    2.50      18.028
# d4               2  5  9  0    0         9     5.4      9    4.00       9.539
# d5               1  2  5  3    1         5     3.4      6    2.75       9.165
# iAlt.Opt (fav.) -- -- -- --   d1     d3,d4      d1     d1      d1          d1


# (b) A continuación vamos a hacerlo para los casos desfavorables:  

# · TABLA DE COSTOS

Tabla2=crea.tablaX(c(3,2,6,7,9,0,0,-1,-3,5,-5,4,4,6,7,0,2,2,1,0,9,8,7,3,4,4,-2,-1,5,-8),numalternativas=6, numestados = 5)

Tabla1


## · Criterio de Wald:

criterio.Wald(Tabla1,favorable =FALSE)

#   - Ponemos FALSE porque estamos trabajando con una tabla de costos. 

#   - La mejor alternativa según el criterio de Wald es la "d2" y "d5", siendo el valor óptimo el 5.


## · Criterio Optimista:

criterio.Optimista(Tabla1,F)

#   - La mejor alternativa según el criterio Optimista es la "d3", siendo el valor óptimo el -9.


## · Criterio de Hurwicz :

criterio.Hurwicz(Tabla1, alfa= 0.6, T)

# - La mejor alternativa según el criterio de Hurwicz es la "d1" siendo el valor óptimo el 5.4

criterio.Hurwicz.General(Tabla1)

dibuja.criterio.Hurwicz(Tabla1)

dibuja.criterio.Hurwicz_Intervalos(Tabla1,T,T)


## · Criterio Savage:

criterio.Savage(Tabla1,F)

#  - La mejor alternativa según el criterio de Savage es la "d3" siendo el valor óptimo el 11.


## · Criterio de LaPlace:

criterio.Laplace(Tabla1,F)

#  - La mejor alternativa según el criterio de LaPlace es la "d3" siendo el valor óptimo el 2.5 .


## · Criterio de Punto Ideal

criterio.PuntoIdeal (Tabla1,F)

#   - La mejor alternativa según el criterio de Punto Ideal es la "d3" siendo el valor óptimo el 12.08305


## · Todos los criterios: 

criterio.Todos(Tabla1,0.6, F)


#                    e1 e2 e3 e4  Wald Optimista Hurwicz Savage Laplace Punto Ideal
# d1                  4  3  6  7     7         3     4.6     15    5.00       17.78
# d2                  5  5  3 -2     5        -2     0.8     12    2.75       13.00
# d3                  4  6 -9  9     9        -9    -1.8     11    2.50       12.08
# d4                  2  5  9  0     9         0     3.6     18    4.00       18.38
# d5                  1  2  5  3     5         1     2.6     14    2.75       14.87
# iAlt.Opt (Desfav.) -- -- -- -- d2,d5        d3      d3     d3      d3          d3



###############################################################################

