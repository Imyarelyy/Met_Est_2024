# Yarely Davila

# Regresión lineal 

geyser <- read.csv("Erupciones.csv", header = T)

plot(geyser$waiting, geyser$eruptions,
    pch = 10, col = "pink",
    xlab = "Tiempo de espera (min)",
    ylab = "Duración (min)")

range(geyser$eruptions)
range(geyser$waiting)

# Revisar si existe una relacion lineal entre dos variables.
cor.test(geyser$eruptions, geyser$waiting)
cor.test(geyser$waiting, geyser$eruptions)

# La pregunta: Podemos predecir el tiempo de la erupcion en base 
# Al tiempo de espera entre dos erupciones consecutivas.

lm(geyser$eruptions ~ geyser$waiting)

gy.lm <- lm(geyser$eruptions ~ geyser$waiting)                                  

summary(gy.lm)

plot(geyser$waiting, geyser$eruptions,
     pch = 10, col = "pink",
     xlab = "Tiempo de espera (min)",
     ylab = "Duración (min)")
abline(gy.lm, col = "purple",lwd = "3")
text (50,4 "y = -1.87+0.075*x")

# Agregar en la tabla el valor predicho
geyser$predicho <- gy.lm$fitted.values
geyser$yprima <- -1.874016 + 0.075628 * geyser$waiting
geyser$residual <- gy.lm$residuals^2

yprima <- c(70,75,82)
-1.87+0.075 * yprima