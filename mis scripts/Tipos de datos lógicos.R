# -----------------------------------------------
#                  Logical
# -----------------------------------------------

# Los posibles valores lógicos

TRUE
FALSE

# Son los únicos valores lógicos. Son el resultado de realizar comparaciones.

# Ejemplo: mi calificación a un examen es de 8.5. Creo la variable calificación_examen1=8.5

calificacion_examen1=8.5

# Le puedo preguntar si obtuve un 10 con == y en la consola me dará FALSE

calificacion_examen1==10

# Le puedo preguntar si aprobé el exámen que se aprueba con 6 con el >= en la consola me dirá TRUE

calificacion_examen1>=6

# Podemos preguntar si la calificación fue mayor a 6 Y menor a 8. Nos devolverá TRUE si ambas condiciones se cumplen o FALse si alguna no se cumple

calificacion_examen1 > 6 & calificacion_examen1 < 8

# Realizamos un segundo examen y nos sacamos 5.9. creamos la variable calificacion_examen2

calificacion_examen2 = 5.9

# Podemos preguntar si tenemos algún exámen reprobado comparando los dos exámenes, sabiendo que se aprueba con 6. La barra vertical es ALT+124
# Nos devolverá TRUE si alguna de las condiciones se cumple y FALSE si ninguna de las condiciones es verdadera

calificacion_examen1 < 6 | calificacion_examen2 < 6

# Podemos preguntar si dos variables son distintas con != y nos dará TRUE si son distintas y FALSE si son iguales

calificacion_examen1 != calificacion_examen2

# Otro ejemplo. Creamos ubna variable string con un nombre de usuario.

Usuario = "xXNoobKillerXx"

# supongamos que quiero saber si hay otro usuario con este mismo nombre. Uso ==. Si lo hay me dirá TRUE y si no me dirá FALSE

Usuario == "Faker"

#  Podemos crear una variable que sea una restricción. Ej. Que la variable usuario  tenga más de 10 letras.

val_numchar = nchar(Usuario) > 10
val_nuchar


# Validar que contenga una palabra en especial. Ej: "Noob"

grepl("Noob", Usuario)

# Validar que NO contenga una palabra en especial. Ej: "Noob". Para voltear un script agrego!

!grepl("Noob", Usuario)

# Creo la variable val_noob para que valide al usuario sin usar los carecteres "Noob"

val_noob = !grepl("Noob", Usuario)
val_noob

# Validar que en la primera posición no comience con un "." queremos un còdigo que nos devuelva TRUE si no comienza con "."
# Podemes utilizar un substr para extraer una parte de la variable usuario y luego crear una variable con con ello.

substr(Usuario, 1,1) != "."

val_punto = substr(Usuario, 1,1) != "."

val_punto

# Si queremos saber se cumplen todas las variables que hemos creado con & podemos sumarlas

val_nchar & val_noob & val_punto

# En este caso nos dio FALSE, en la consola pq la variable val_noob se la definió como que NO contenga los carcteres Noob y hay un usuario que si los tiene.

#  Además los valores lógicos tambien son numéricos, con true=1 false igual 0 y podemos realizar operaciones.

TRUE==1
FALSE==0

TRUE+TRUE+FALSE+FALSE+TRUE


# Ejercicio (true & true) | (false & true)

(TRUE&TRUE) | (FALSE&TRUE)

# La respuestra es true pq true y true es igual a true, false y true es igual a true y por último true y true es iguala a true.

#  Ejercicio: crear un usuario RIOT Mictlan y generar un código que validae en Nº de caracteres menor a 10
#  que no contenga la palabra RIOT y que el nombre de de usuario no es E!Vaipa ni Ixtli

Usuario= "RIOT Mictlan"

nchar (Usuario) < 10 & !grepl ("RIOT", Usuario) & Usuario != "Elvaipa" & Usuario != "Ixtli"





























