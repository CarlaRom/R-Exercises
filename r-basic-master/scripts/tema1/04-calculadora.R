2*(3+5/2)

2*((3+5)/2)

2/3+5

2%/%3+5

2%%3

2^3*5

2^-4

2^(-4)

725%/%7

725%%7
#La siguiente fórmula es "dividendo = divisor * cociente + resto"
# D = d * q + r
# r = D - d * q
# q = D %/% d
# x = D %% d 
725 - 103*7

pi

2*pi

3^pi

pi^2

Inf

-Inf

NA

NaN

5/0

0/0

2^50# = 1.1259e+15 = 1125900000000000 

2 ^(-15) # 3.051758e-05 = 0.00003051758

c(2^30, 2^(-15), 1, 2, 3/2)


sqrt(25)

exp(1)

log(pi)

log(32, 2)

log(32, base = 2)
log(base=2, 32)

abs(-pi)

factorial(7)

factorial(4)

factorial(0)

choose(5, 3)

choose(3,5)

log(4^6, 4)

6^log(4,6)

choose(5,2)

sin(60*pi/180)

cos(60*pi/180)

sinpi(1/2) # = sin (pi/2)

tan(pi) # -1.224647e-16 ~ este número se puede aproximar a 0

tan(pi/2) # 1.633124e+16 ~ un valor tan grand ese aproxima a Inf

asin(0.8660254) #arc sin en radianes

asin(0.8660254) * 180 /pi #arc sin en grados

asin(5) #arc sin x in [-1,1]

acos(-8)

#Redondeo y decimales en R:
#print(x, n) --> muestra las n cifras significativas del número x
#round(x, n) --> redondea a n cifras significativas un resultado o vector numérico x
#floor(x) --> parte entera por defecto de x (redondeo a la baja, ej 1.41 = 1)
#ceiling(x) --> parte entera por exceso de x (redondeo al alza, ej 1.41 = 2)
#trunc(x) --> parte entera de x, eliminando la parte decimal

print(sqrt(2),10)
round(sqrt(2), 3)
floor(sqrt(2))
ceiling(sqrt(2))
trunc(sqrt(2))

sqrt(2)^2-2 #(da un número muy pequeño en notación científica que debería de aproximarlo a 0)

round(sqrt(2), 4)^2

2^50
print(2^50, 15)
print(2^50, 2)
print(pi, 22)
#3.141592653589793115998 #OJO! NO pedir más de 16 dígitos a R porque se equivoca, como ocurre con el número pi
#3.141592653589793238462 #6 últimos dígitos no coinciden con los del número pi real

#Redondea a tantos dígitos decimales que especifiques en el segundo término del paréntesis
#Si no pones ninguno se entiende que redondea al número entero sin decimales, igual que si pones 0
#De normal si tiene un 5 detrás tiende a redondear al número par.
round(1.15, 1) #no lo redondea al número par, no sabe por qué está redondeando mal
round(1.25,1)
round(1.35,1)
round(sqrt(2),0)
round(sqrt(2))

#Especifica el número de cifras decimales antes que el número que se quiere redondear, invierte el orden
round(digits = 5, sqrt(2))
round(5, sqrt(2))

#Cuidado con los números negativos, que si redondea a la baja de -3.45 pasa a -4
#Y si redondea al alza, de -3.45 pasa a -3
floor(-3.45)
ceiling(-3.45)
trunc(-3.45)


#VARIABLES Y FUNCIONES
#nombre_variable = valor: define una variable con dicho valor
#nombre_funcion = function(variable){función}: define una función
x = (pi^2)/2
x

y <- cos(pi/4)
y

sin(pi/4) + cos(pi/4) -> z
z

edad <- 30
edad <- edad - 5

nombre = "Juan Gabriel"
NOMBRE = "Carla"

HOLA = 1
hola = 5

pi.4 = 4*pi
pi.4

x = 2
x = x^2

x = sqrt(x)

#COMO CREAR FUNCIONES

## Función f(x) = x^3 - (3^x)* sen(x)
f = function(x) {
  x^3 - (3^x) * sin(x)
}

f(4) # 4^3 - 3^4 * sin(4)
f(5)
f(pi/2)

suma1 <- function(t){
  t + 1
}
suma1(6)
suma1(-5)

product <- function(x, y){
  x*y
}
product(5,7)

g <- function(x,y,z) {
  exp(x^2 + y^2) * sin(z)
}
g(1, 2, 3)
g(1, -1, pi)

suma5 <- function(numero){
  numero = suma1(numero);
  numero = suma1(numero);
  numero = suma1(numero);
  numero = suma1(numero);
  suma1(numero)
}

suma5(3)

ls()

rm(product)

ls()

rm(list = ls())

#NÚMEROS COMPLEJOS (parte real y parte imaginaria)
#Argumento: es el ángulo que forma con el eje horizontal (la parte real)
#Conjugado: mantiene todo igual pero cambia de signo la i (ej 3+2i --> 3-2i)

class(3+2i)

(3+2i)*5

(3+2i)*(-1+3i)

(3+2i)/(-1+3i)

#Esto es un error (colocar el símbolo de la multiplicación entre el 7 y el i:
#2+7*i
#Correcto: 2+7i

# Esto es un error pi + sqrt(2)i
#Lo correcto:
complex(real = pi, imaginary = sqrt(2)) -> z1
z1

#No se puede hacer la raíz cuadrada de un número negativo en R, a no ser que lo definamos 
#como número complejo
sqrt(-5)
sqrt(as.complex(-5))

#La raíz cuadrada devuelve, de las dos soluciones la de
#Re(z)>0 (parte real positiva). Para obtener la otra,  hay que multiplicar por -1
sqrt(3+2i) # z^2 = 3+2i (dado un número complejo elevado al cuadrado)
exp(3+2i)
sin(3+2i)
cos(3+2i)

#Módulo = sqrt(Re(z)^2 + Im(z)^2) (El módulo es igual a la raíz cuadrada de la parte
#real al cuadrado más la parte imaginaria al cuadrado)
Mod(z1)
#Argumento = arctan(Im(z)/Re(z))
# = arccos(Re(z)/Mod(z))
# = arcsin(Im(z)/Mod(z))
# el argumento va de (-pi, pi] :el paréntesis no incluye el -pi y el corchete sí incluye pi
Arg(-1+0i) #Los ángulos en R van en radianes!!
Arg(-1-2i)
#Conjugado = Re(z)- Im(z)i (Es la parte real y la parte imaginaria cambiada de signo)
Conj(z1)
#Parte Real y Parte Imaginaria
Re(z1)
Im(z1)

### z = Mod(z) * (cos(Arg(z))+sin(Arg(z))i) (Número complejo en forma binomial)
complex(modulus = 2, argument = pi/2) -> z2
z2
Mod(z2)
Arg(z2)
pi/2

#########################TAREA R COMO CALCULADORA#########################################
#1. Si hubiéramos empezado a contar segundos a partir de las 12 campanadas que marcan el
#inicio de 2018, ¿a qué hora de qué día de qué año llegaríamos a los 250 millones de 
#segundos? ¡Cuidado con los años bisiestos!

#Respuesta: 1 día tiene 24 horas, 1440 minutos y 86400 segundos
60*24
3600*24
60*60
250000000/86400 
2893.519 -> días
días/365
7.927449 -> años
#2018: 365 días
#2019: 365 días
#2020: 366 días
#2021: 365 días
#2022: 365 días
#2023: 365 días
#2024: 366 días
#2025: 365 días

2*366 #732 días
6*365 #2190 días
(2*366)+(6*365) #2922 días que se pasa de los 2893.519 días calculados
2922-2893.519 #sobran 28.481 días

365-28.481 #días transcurridos en 2025

#Mi respuesta: hora 12:00 del mediodía por los 30.5 días que sobran, el día 1 de diciembre 
#que tiene 31 días y el año 2025

#2. Crear una función que nos resuelva una ecuación de primer grado (Ax+B=0).
Ec1 = function(a,b,c){
  (c+(-1)*b)/a
}

Ec1(2,4,0)
Ec1(5,3,0)
Ec1(7,4,18)
Ec1(1,1,1)

#3. Dad una expresión para calcular 3e-π y a continuación, dad el resultado que habéis
#obtenido con R redondeado a 3 cifras decimales.

3*exp(1)-pi
round(5.013253, 3)

#Dad el módulo del número complejo (2+3i)^2/(5+8i) redondeado a 3 cifras decimales.
(2+3i)^2/(5+8i)
Mod((2+3i)^2/(5+8i)) -> modex3
round(modex3, 3)

#Otra forma de responder al ejercicio 1:
minutos=250000000%/%60

segundos=250000000%%60

horas=minutos%/%60

minutos=minutos%%60

dias=horas%/%24

horas=horas%%24

anios=dias%/%365

dias=dias%%365-2

sprintf("Año: %i, dia: %i, hora: %i:%i:%i",2018+anios,dias,horas,minutos,segundos)



