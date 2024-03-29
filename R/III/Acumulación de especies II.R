library(entropart)

# Calculo de la diversidad acumulada para 100 permutaciones
accum <- estaccumR(BCI, permutations = 100)

# Diversidades acumuladas promedio
accum.mean <- as.data.frame(accum$means) 

# Abundancias acumuladas
accum.abundance <- cumsum(rowSums(BCI))

plot(x = accum.mean$N, # Valores de X
     y = accum.mean$S, # Valores de Y
     xlab = "Unidades de muestreo", # Etiqueta del eje X
     ylab = "Riqueza acumulada", # Etiqueta del eje Y
     type = "l", # Tipo de l�nea (s�lida)
     ylim = c(80, 240), # L�mites del eje Y (seg�n los datos)
     yaxt = "n") # Remover la divisi�n por defecto del eje Y (para usar personalizada)

# Intervalo personalizado del eje Y de la grafica (seg�n los datos)
axis(side = 2, at = seq(80, 240, 40))

# Curva del estimador Chao
lines(x = accum.mean$N, # Valores de X
      y = accum.mean$Chao, # Valores de Y
      type = "l", # Tipo de l�nea (s�lida)
      col = "red") # Color de la l�nea

# Curva del estimador ACE
lines(x = accum.mean$N, # Valores de X
      y = accum.mean$ACE, # Valores de Y
      type = "l", # Tipo de l�nea (s�lida)
      col = "blue") # Color de la l�nea

# Leyenda de la grafica
legend(x = "bottomright", # Posici�n
       legend = c("SObs", "Chao 1", "ACE"), # Texto de la leyenda
       lty = c(1, 1, 1), # Tipos de l�nea de los s�mbolos
       col = c("black", "red", "blue"),  # Colores de los s�mbolos
       lwd = 2, # Grosor de las l�neas de los s�mbolos
       inset = c(0.025, 0.05)) # M�rgenes de la leyenda
