#                         LAURA CALERO PALOMO 


# ENUNCIADOS DEL TRABAJO DE TEORÍA DE LA DECISIÓN .

# PROBLEMA 1: Aplicar los criterios de decisión bajo incertidumbre a los 
# problemas cuya matriz de valores numéricos viene dada en la siguiente 
# tabla:

matrix(c(4,3,6,7,5,5,3,-2,4,6,-9,9,2,5,9,0,1,2,5,3),5,4)


# En primer lugar, cargamos el fichero R donde se encuentran todas las funciones
# que vamos a necesitar para hacer los ejercicios.

source("teoriadecision_funciones_incertidumbre.R")


# (a) Ahora para aplicar los criterios de decisión bajo incertidumbre, vamos a 
#     crear antes una tabla:

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

#  - La mejor alternativa según el criterio de Hurwicz  general es la "d1" siendo el valor óptimo el 4.2.

dibuja.criterio.Hurwicz(Tabla1)

dibuja.criterio.Hurwicz_Intervalos(Tabla1,T,T)


## · Criterio Savage:

criterio.Savage(Tabla1,T)

#  - La mejor alternativa según el criterio de Savage es la "d1" siendo el valor óptimo el 3.


## · Criterio de Laplace:

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

## · Criterio de Wald:

criterio.Wald(Tabla1,favorable =FALSE)

#   - Ponemos FALSE porque estamos trabajando con una tabla de costos. 

#   - La mejor alternativa según el criterio de Wald es la "d2" y "d5", siendo el valor óptimo el 5.


## · Criterio Optimista:

criterio.Optimista(Tabla1,F)

#   - La mejor alternativa según el criterio Optimista es la "d3", siendo el valor óptimo el -9.


## · Criterio de Hurwicz :

criterio.Hurwicz(Tabla1, alfa= 0.6, F)

# - La mejor alternativa según el criterio de Hurwicz es la "d3" siendo el valor óptimo el -1.8

criterio.Hurwicz.General(Tabla1)
# - La mejor alternativa según el criterio de Hurwicz es la "d1" siendo el valor óptimo el 4.2

dibuja.criterio.Hurwicz(Tabla1)

dibuja.criterio.Hurwicz_Intervalos(Tabla1,F,F)


## · Criterio Savage:

criterio.Savage(Tabla1,F)

#  - La mejor alternativa según el criterio de Savage es la "d3" siendo el valor óptimo el 11.


## · Criterio de Laplace:

criterio.Laplace(Tabla1,F)

#  - La mejor alternativa según el criterio de LaPlace es la "d3" siendo el valor óptimo el 2.5.


## · Criterio de Punto Ideal

criterio.PuntoIdeal (Tabla1,F)

#   - La mejor alternativa según el criterio de Punto Ideal es la "d3" siendo el valor óptimo 
#     el 12.08305


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

# PROBLEMA 2: Estamos pensado en ir a celebrar mi cumpleaños, mi mejor amiga
# mi hermana, mi hermano y yo, a la bolera este fin de semana ya que hay mucho 
# ambiente y muchas ofertas, pero no sabemos muy bien qué elegir. Las opciones 
# que tenemos son: 

#  · Ir a cenar a un bar de tapas que se encuentra al lado, pagando 20 euros 
#    cada uno, comiendo y bebiendo así todo lo que queramos. Y después entrar a 
#    la bolera que nos saldría por 8 euros cada uno. Si queremos utilizar los 
#    recreativos (futbolín, baloncesto, billar,..), tendríamos que pagar entre 
#    los 4, 8 euros más.

#  · Comprar la oferta dentro de la bolera, donde nos entra jugar a los bolos y 
#    además cenar pizza, una por persona. Que saldría a 30 euros por persona. 
#    Ahora bien, si queremos usar las instalaciones de los recreativos, con pagar 
#    2 euros más por persona, sería suficiente. 

#  · Pagar 30 euros cada uno, y podemos cenar lo que queramos, jugar a los bolos
#    y utilizar los recreativos. Aunque si es cierto, que la bebida no entra y 
#    saldría a 5 euros por persona. 

# ¿ Cuál es la mejor opción si queremos gastarnos lo menos posible?


# SOLUCIÓN DEL PROBLEMA: 

# · En primer lugar, sabemos que estamos ante un modelo de minimizar 
#   costos (desfavorables)

# · Las alternativas son las siguientes: 

#   - d1: "Cena en un bar de tapas y jugar a los bolos"
#   - d2: "Cenar dentro de la bolera unas pizzas mientras se juega a los bolos"
#   - d3: "Cenar todo lo que queramos jugando a los bolos pero sin bebida incluida"

# · Los estados son: 

#   - e1: "No entran los recreativos / o bebida (en la alternativa 3)"
#   - e2: "Entra los recreativos / o bebida (en la alternativa 3)"


# · Matriz de decisión: 

#  - Alternativas d1:

x11 = 20*4 + 8*4
x11

x12 = 20*4 + 8*4 + 8
x12

#  - Alternativas d2:

x21 = 30*4 
x21

x22 = 30*4 + 2*4
x22

#  - Alternativas d3: 

x31 = 30*4
x31

x32 = 30 * 4 + 5*4
x32

# · Ahora creamos la tabal de los datos:

Tabla_problema2 = crea.tablaX(c(x11,x12,x21,x22,x31,x32),3,2)
rownames(Tabla_problema2) = c("Tapas y bolos", "Pizzas y bolos", "Cena, bolos, recreativos y sin bebida")
colnames(Tabla_problema2) = c("Sin recreativos/ sin bebida(d3)", "Con recreativo/ con bebida(d3)")
Tabla_problema2

# · Por último, aplicamos todos los criterios, para ello, necesitamos como en el
#   problema 1, lo siguiente: 

source("teoriadecision_funciones_incertidumbre.R")


criterios=criterio.Todos(Tabla_problema2, alfa = 0.6, favorable = F)
criterios

# COnclusión:

# - En todos los criterios sale que la opción más económica es ir a cenar a un
#   bar de tapas, pagando 20 euros cada uno, comiendo y bebiendo todo lo que 
#   queramos. Y después entrar en la bolera por 8 euros cada uno.