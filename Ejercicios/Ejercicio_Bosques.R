# Yarely Danay Davila Martinez 
#2133638
#29/10/2024

Ejercicio #1 Bosques 

Grupo <- gl(2, 15, labels = c("Bosque Templado", "Bosque Tropical"))
biomasa <- c(45, 48, 47, 50, 46, 49, 51, 47, 46, 52, 48, 50, 49, 47, 
             46, 60, 59, 62, 61, 58, 63, 62, 61, 60, 59, 62, 60, 61, 63, 62)

Datos <- data.frame(Grupo, biomasa)
head(Datos)

t.test(Datos$biomasa ~ Datos$Grupo, var.equal = T, alternative = "greater")

mean(biomasa)

sd(Datos$biomasa)

t.test(Datos$biomasa ~ Datos$Grupo, var.equal = T, alternative = "greater")


----------------------------------------------------------------------------------------------------------------------------------------

Ejercicio #2 Dureza

Grupo <- gl(2, 15, labels = c("Dureza inicial", "Dureza Posterior"))
Dureza_Inic <- c(3.1, 2.9, 3.2, 3, 3.1, 3.2, 2.8, 3.3, 3, 3.1, 2.9, 3.2, 2.8, 3, 
            3.1, 3.4, 3, 2.9, 3.1, 3.3, 2.7, 3.1, 3, 2.9, 3.2, 3.3, 2.8, 3, 3.2, 
            2.9, 3.5, 3.4, 3.6, 3.2, 3.3, 3.4, 3, 3.7, 3.3, 3.4, 3.2, 3.5, 3.1, 
            3.4, 3.3, 3.8, 3.3, 3.2, 3.5, 3.6, 3, 3.5,3.4, 3.3, 3.5,
            3.6, 3.2, 3.3, 3.6, 3.4)


-----------------------------------------------------------------------------------------------------------------------------------------


Ejercicio #3 Rancho 

Grupo <- gl(2, 10, labels = c("Peso", "Saco"))
Peso <- c(24.8, 24.5, 24.7, 24.6, 24.3, 24.9, 24.4, 24.5, 24.6, 24.2, 24.5, 
          24.4, 24.3, 24.7, 24.8, 24.5, 24.3, 24.4, 24.6, 24.2)

Datos <- data.frame(Grupo, Peso)
head(Datos)

mean(Peso)
sd(Datos$Peso)

t.test(Datos$Peso ~ Datos$Grupo, var.equal = T)
