# ---------------------------------------------------------------------------------------
#                   Vectores lógicos: Sirven para hacer comparaciones entre vectores
# ---------------------------------------------------------------------------------------

# Condiciones lògicas del vector
#  Qué videos tienen más de 6000 vistas? Respuesta en consola me trae todos los videos diciéndome TRUE a los que tienen más de 6000 vistas y FALSE a los que tienen menos

vistas >  6000

#  si queremos saber cuantos videos tienen más de 6000 vistas los sumamos, ya que TRUE vale 1 y FALSE vale 0
#  Resultado en consola 3

sum(vistas>6000)

#  Si queremos saber si algún video tuvo más de 8000 vistas pero no queremos que nos devuelva todos los videos
#  Nos trae la respuesta TRUE
any(vistas> 8000)

#  Si queremos saber acerca de todas las vistas tienen más de 2000 vistas. Respuesta TRUE pq todos los videos tienen más de 2000 vistas

all(vistas >2000)

# Pero si preguntamos si todos los videos tienen más de 5000 vistas nos responderá FALSE porque no todos las tienen, lo mismo que si pregunatamos si alguno tiene más de 10000, pq ninguno las tiene

all(vistas > 5000)
all(vistas> 10000)

# Qué videos tienen menos de 5000 vistas?

vistas< 5000


# En que posición están los videos que tienen menos de 5000 vistas?
# Respuesta: Me devolverá las posiciones de los videos en las que hay un TRUE

which(vistas < 5000 )

# -------------Extraer información de un vector------------------------------------

# Cómo obtener un subconjunto del vector

# Especificar que entrada quiero ver. Quiero ver la 2 y la 4. Me muestra el video y las vistas de la 2 y la 4 entrada

vistas[c(2,4)]

# Si quiero ver una sola entrada. Veo el video 3 con sus vistas

vistas[3]

#  Si NO quiero ver alguna entrada. Veo todas menos la 4. O como en el 2do script la segunda y la cuarta entrada


vistas[-4]
vistas[-c(2,4)]

# Podemos especificar las búsquedas de varias maneras. Si queremos saber las entradas que tienen más de 5000

vistas[c(FALSE,TRUE,FALSE,TRUE,FALSE, FALSE, FALSE)]
vistas[vistas> 7000]
vistas[vistas > 4000 & vistas < 5000]
vistas[c("Video 2", "Video 4")]

# Como modificar una o más entradas en un vector
#Borré el vector que estaba mal de 5600 que estaba en la posición 9

vistas[-9]
---
vistas[1]= 500
vistas[c(2,3,4)]=c(600,700,800)
vistas[vistas>7000]=7000
vistas

# --------------Utilizando los Vectores como Conjuntos-----------------------
# Creamos 2 variables con los juegos que tienen 2 amigos (yo y amigo)

yo=c("GTA V", "MORTAL COMBAT", "ZELDA","SKYRIM")

amigo=c("MARIO KART", "ZELDA","DEVIL MAY CRAY","GTA V")

yo
amigo

# Que videos tienen entre los dos? este no da bien.

c(yo,amigo)
union(yo, amigo)

# Si queremos unirlos evitando repeticiones o sea que viedeos tenemos en común

intersect(yo, amigo)

# Que videos tengo yo que amigo no tiene?

setdiff(yo, amigo)

# Tenemos los mismos viedeo juegos? en consola me darà false pq no tenemos los mismos viedeo juegos

setequal(yo,amigo)

# si buscamos un dato particular, Ej.  queremos saber si amigo tiene el juego ZELDA. La respuesta en consola será TRUE

"ZELDA"%in%amigo

# Si queremos preguntar por varios podemos crear un vector.Dará False para el primero y True para el segundo

c("AGE O EMPIRES", "MARIO KART")%in%amigo


# --------------------Vectores Deterministas u otra manera de generar vectores----------------

# Utilizando el operador : me creó 50 números correlativos, de 20 a 1 y de negativos a positivos

1:50
20:1
-5:5

# Utilizando la función seq puedo armar grupos por saltos

seq(from = 0, to =50, by = 1)
seq(from = 0, to = 50, by = 10)
seq(from = 0, to = 50, by = 0.5)

# Crear vectores a partir de carateres: 1) creo la variable juego, 2) le pido que me divida las palabras

Juego= "MORTAL KOMBAT"
split = strsplit(Juego, " ")[[1]]
class(split)
split

# si lo quiero separar por cada uno de sus caracteres no dejo espacio entre las comillas y me devuelve cada letra de ambas palabras encomillada

split = strsplit(Juego, "")[[1]]
class(split)
split

# Buscamos si tiene una letra en particular, Ej si tien una "O" recordar que estaba en mayúscula, sin lo pongo en minúscula dará false

any(split=="O")































