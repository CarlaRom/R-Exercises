##TEMA 3. EJERCICIOS BÁSICOS
#1. Repite tu año de nacimiento 10 veces
rep(1994, 10)
scan()

#2. Crea el vector que tenga como entradas 16, 0, 1, 20, 1, 7, 88, 5, 1, 9, llámalo vec y modifica
#la cuarta entrada con la función fix()
vec <- c(16, 0, 1, 20, 1, 7, 88, 5, 1, 9)
vec
fix(vec)
vec

##EJERCICIOS SECUENCIAS
#1. Imprimid los números del 1 al 20.
1:20
seq(1, 20, by= 1)
seq(1, length.out = 20)

#2. Imprimid los 20 primeros números pares.
seq(2,length.out = 20, by= 2)

#3. Imprimid 30 números equidistantes entre el 17 y el 98, mostrando solo 4 cifras significativas.
seq(17, 98, length.out = 30)
?seq
round(seq(17, 98, length.out = 30), 4)

##EJERCICIOS ORDEN
#1. Combinad las dos funciones anteriores, sort() y rev() para crear una función que dado un 
#vector x os lo devuelva ordenado en orden decreciente. 
decreciente = function(x){rev(sort(x))}
v = c(2, 30, 1, 78, 25, 4, 12)
decreciente(v)

#otra manera:
sort(v, decreasing = TRUE)

#2. Razonad si aplicar primero sort() y luego rev() a un vector x daría en general el mismo resultado
#que aplicar primero rev() y luego sort().
sort(rev(v))
rev(sort(v))
#No dan el mismo resultado porque sort ordena en orden creciente y luego rev le da la vuelta al 
#vector, generando un vector en orden decreciente. Mientras que si primero aplicamos rev, 
#el vector se da la vuelta independientemente de que los números esten ordenados o no y luego sort
#los ordena en orden creciente, entonces hacer rev no influye en la acción posterior de sort.

#3. Investigad la documentación de la función sort() (recordad que podeis usar la sintaxis ?sort en
#la consola) para leer si cambiando algún argumento de la misma podeis obtener el mismo resultado
#que habeis programado en el primer ejercicio.
?sort
sort(v)
sort(v, decreasing = TRUE, index.return = TRUE)
v
