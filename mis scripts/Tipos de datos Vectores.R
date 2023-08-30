# -------------------------------------------------------------------------------------
#                            Vectores
# Sirve para guardar algún tipo de de atos de los tres: Stings, Numéricos y lógicos
# -------------------------------------------------------------------------------------

# Definción de vectores

# Vector numérico 

# Vamos a crear un ejemplo que tiene que ver con videos, vistass de videos y peraciones básicas

# Vamos a crear una variable que es un vector numérico (Nº de vistas de los viedeos)

vistas=c(8321,2974,5792,4932,4889,7433,6651)

# Vamos a crear una variable con el nombre de los Videos. Vector de caracteres.

Nombres= c("Video 1","Video 2","Video 3","Video 4","Video 5", "Video 6", "Video 7")

# Operaciones básicas

# ¿Cuántos viedeos hay o entradas? respuesta en consola 7.  

length(vistas)

# ¿Cuántas vistas tiene el video más visto? respuesta en consola 8321

max(vistas)

# ¿Cuántas vistas tiene el menos visto? Respuesta en consola 2974

min(vistas)

# ¿Cuál es el promedio de vistas de los videos? Respuesta en consola 5856

mean(vistas)

# ¿Cuántas vistas tiene todo el canal de videos? Respuesta en consola 40992

sum(vistas)

# Si le sumamos 1000, R, le va a sumar 1000 a cada vista. Por eso se dice que R es un programa vectorizado
# Respuesta en consola: le sumó 1000 a cada una de las 7 vistas de los 7 videos. En otros lenguajes deberìamos hacerlo 1 por 1

vistas + 1000

# Lo mismo pasa con otras operaciones. Se aplica a todos las filas de la variable

vistas/500
log(vistas)
nchar (Nombres)

# Si queremos agregar un nuevo video con su nueva cantidad de vistas... En consola aparecen todos.

vistas= c(vistas, 5600)
vistas
Nombres=c(Nombres, "Video 8")
Nombres

# Le pones nobre a las entradas de un vector para que coincidan vistas con vectores. La variable es vistas. 
# Resultado en consola al dar run a vistas aparecen los videos con sus vistas.
names(vistas)=Nombres
vistas


# Ordeno un vector de menor a mayor. Respuesta en consola me ordena los videos y las vistas

sort(vistas)


# Supongamos que no sabemos cual es la función de R para ordenar de mayor menor: van a aparecer instrucciones en HELP

?sort

sort(vistas, decreasing=TRUE)


































