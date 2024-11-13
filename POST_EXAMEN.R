# Yarely Davila 2133638
# Ejercicio 1

Grupo <- gl(2, 15, labels = c("Bosque Templado", "Bosque Tropical"))

biomasa <- c(45, 48, 47, 50, 46, 49, 51, 47, 46, 52, 48, 50, 49, 47, 46,
             60, 59, 62, 61, 58, 63, 62, 61, 60, 59, 62, 60, 61, 63, 62)

Datos <- data.frame(Grupo, biomasa)
head(Datos)

# Desviacón Estandar 
install.packages("dplyr")
library(dplyr)

resumen <- Datos %>%
  group_by(Grupo) %>%
  summarise(Media = mean(biomasa),
            desviacionEstandar = sd(biomasa))
print(resumen)

# Prueba T
pruebat <- t.test(biomasa ~ Grupo, data = Datos, var.equal = TRUE)
print(pruebat)


# Ejercicio 2

Muestra <- read.csv("Muestra.csv", header = T)




# Ejercicio 3

Sacos <- read.csv("Sacos.csv", header = T)

