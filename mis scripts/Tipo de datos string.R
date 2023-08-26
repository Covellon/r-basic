# ------------------------------------
#                  String
# ------------------------------------
# creo una variable

Usuario="OkabeRintarou"

# Se cuantas caracteres tiene la palabra
nchar(Usuario)
# Cree una variable con la cantidad de caracteres
nchar_usuario = nchar(Usuario)
# Para poner todo el texto en minúscula
tolower(Usuario)
# Para poner todo el texto en mayúscula
toupper(Usuario)
# Para obtener un pedazo del string del principio de la palabra
substr(Usuario, 1, 5)
# Para obtener un pedazo del strig del final (los números incluyen los caracteres)
substr(Usuario,6,nchar_usuario)
# Sustituir caracteres en un solo carter, el primero
sub("a","A",Usuario)
# Sustituir todos los carteres iguales
gsub("a","A",Usuario)
# Reemplazo todo una parte
sub("Okabe","Houiuin", Usuario)
# Pegar o concaternar 2 o más strings, sep hace que haya un espacio qu en este caso es en blanco
paste("Mi nombre de usuario de League of Legends es:", Usuario, sep= " ")

# Ejercicio

madmen="Don Draper lucha por mantenerse en la cima del grupo Sterling-Cooper"
madmen_mod=sub("Don Draper", "Ricahrd Withman", madmen)
paste("En la serie Madmen:", madmen_mod, sep =" ")



















