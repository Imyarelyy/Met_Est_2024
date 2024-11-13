# Yarely Davila 2133638

# Prueba de t de una muestra 

# Realizar la comparacion de una muestra experimental vs una muestra teorética.

semillas  <- read.csv("Datos raw_SemillasJE.csv", header = T)

View(semillas)

# Probar la normalidad de los datos de las semillas 
shapiro.test(semillas$Peso)


# Primera visualizacion de los datos 

boxplot(semillas$Peso, col = "lightblue")
abline(h =6.2, col = "pink", lwd = 4, lty = "dotdash")
abline(h =5.7, col = "lightgreen", lwd =5, lty = "dotdash")

t.test (semillas$Peso, mu = 6.2)
# Existen diferencias entre el peso observado y el peso de la media teorética.
# Aceptamos la hipotesis alternativa 


# Ejemplo 2 -------------------------------------------------------------------

# Ahora la media teorética es e 5.85 g 

boxplot(semillas$Peso, col = "lightblue")
abline(h =5.85, col = "pink", lwd = 4, lty = "dotdash")
abline(h =5.7, col = "lightgreen", lwd =5, lty = "dotdash")


# Ejercicio 3------------------------------------------------------------------

# Ahora  la media teorética es de 5.78 g 

boxplot(semillas$Peso, col = "lightblue")
abline(h =5.78, col = "pink", lwd = 4, lty = "dotdash")
abline(h =5.7, col = "lightgreen", lwd =5, lty = "dotdash")

t.test(semillas$Peso, mu = 5.78, alternative = "less")

