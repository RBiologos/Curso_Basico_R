## En este script est�n contenidas algunas funciones para la elaboraci�n
## de plots de RBase

## Diagrama de dispersi�n
plot(iris$Sepal.Length)

plot(iris$Sepal.Length, 
     iris$Sepal.Width)

plot(iris$Sepal.Length, 
     iris$Sepal.Width,
     col = iris$Species)

## Diagrama lineal
r <- read.csv(choose.files())
head(r)

# Gr�fica sin l�nea
plot(r$dgran, r$dmedia, main="Gr�fica sin l�nea")
# Gr�fica con l�nea
plot(r$dgran, r$dmedia, 
       type = "l", # Traza la l�nea entre puntos
       main="Gr�fica con l�nea")

## Diagrama de cajas
plot(iris$Species, iris$Petal.Length)

plot(iris$Species, iris$Petal.Length,
     main = "Longitud de p�talos de 3 especies del g�nero Iris", 
     xlab = "Especies", 
     ylab = "Longitud (cm)", 
     col = c("orange", "yellow", "green"),
     font = 3)

## Diagrama de barras
plot(x = chickwts$feed,
     col=c('red','black','green','blue', 'orange', 'grey'),
     xlab="Suplementos alimenticios",
     ylab="Total de experimentos",
     main="Suplementos alimenticios en pollos")

## Diagrama de histograma
hist(faithful$waiting, main = "Histograma",
       ylab = "Frecuencia",
       xlab = "Tiempo de espera",
       col = "cyan3")



