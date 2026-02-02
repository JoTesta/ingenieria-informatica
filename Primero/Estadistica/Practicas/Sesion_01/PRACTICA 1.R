2^3
3+5
sin(45) #calcular seno
sqrt(16) #calcular raiz cuadrada
exp(1) #e^1
pi

#definir vectores
x = c(-1,2,3/5,4,0)
x
x[3:4] #elementos del 3 al 4
x[seq(3,5, by= 2)] #elementos 3 y 5
x[c(3,5)] #elementos 3 y 5

#operaciones con vectores
min(x)
max(x)
length(x) #longitud
sum(x) #suma elementos
prod(x) #multiplicación de elementos

y=1:3
x+y
x*x #multiplica x elemento a elemento

#bucle for
for (i in 1:5){
  print(x[i])
}

##EJERCICIOS BOLETIN 1 PRACTICAS

#ejercicio 1
#a

t = c(0,0.25,0.5,0.75)
t = seq(0,0.75, 0.25)
?seq  #saber que hace un comando 
sort(t) #de menos a mas
sort(t, decreasing=T) #de más a menos

sum(t^2) 
sin(2*pi*t)

#b
esp_vida= c(83.2,82.5,83,83.4,82.4,81.4,81.4,81.8,81.6)
media = mean(esp_vida)  #media aritm
esp_vida[esp_vida<media] #valores debajo de la media
esp_vida[esp_vida>=media] #valores por encima de la media
esp_vida[!esp_vida<media] #valores no por debajo de la media
names(esp_vida) = c("España", "Francia", "Italia", "suiza", "Luxemburgo", "Belgica", "Reino Unido", "Irlanda", "Portugal")
esp_vida
which(esp_vida<media) # nos da las posiciones que están por debajko de la media

#c
#definir matriz por filas
f1=1:4 ; f2=5:8 ; f3=9:12; f4=13:16;
A1 = rbind(f1,f2,f3,f4);A1
#si fueran columnas usar cbind en vez de rbind
A3= matrix(1:16, nrow=4,ncol=4, byrow=TRUE); A3
b= t(A3);b #hacer la traspuesta
det(A3)#hacer determinante
C= A3%*%b #producto matricial de a y b
det(C)
solve(C) #hacer inversa de C, pero en este caso no se puede porque el det es 0

#EJERCICIO 2
nomes = c("Juan", "Josefina")
fillos = 3
idades = c(16,11,4)
enquisa = matrix(c(8,7,5,4,4,3,5,10,7,7),nrow = 5, ncol = 2); enquisa #hacer lista, sería como una especie de struct.
resultados = list(nomes, fillos, idades, enquisa); resultados
resultados[[1]] #para buscar un elemento en la lista con doble caracter


#EJERCICIO 3
hectareas= c(0.8,1.1,0.6,3.2,1.4,2.1,1.5,0.2,1.0,6.1)
ocupacion = c(1200,650,1060,235,1300,300,750,150,440,500)
plot(hectareas,ocupacion,xlab="HECTÁREAS", ylab="OCUPACIÓN",col="#00ff00",pch=16)#grafo
zona = c(1,1,1,2,3,2,3,3,3,2)
plot(hectareas,ocupacion,xlab="HECTÁREAS", ylab="OCUPACIÓN",col= zona ,pch=16)#grafico con zonas diferenciadas.


#EJERCICIO 4
palabra = function(n){
  let= sample(letters,size = n, replace= T)
  let = paste(let, collapse= "")
  return(let)
}
letters #variable con el abecedario.

palabra(6)


#EJERCICIO 5
install.packages("LearningStats") #descargar el paquete
library(LearningStats)



#EJERCICIO 6
getwd() #devuelve el directorio de trabajo
datos = read.table("DatosIGE.csv", header = TRUE, sep=",", dec="." ) ;datos
#header TRUE o FALSE si la primera fila del archivo son los nombres de las variables
#sep = ",", es el separador, en caso del csv es la coma
#dec = "." es el símbolo que se utiliza para los decimales, casi siempre el punto
#para saber estas variables mirar el archivo
datos$Idade
datos[1,3] #elemento de la primera fila y la tercera columna
datos[2,] #segunda fila
datos[,3] #tercera columna








