# Ejercicio 
# Yarely Davila Martinez 
# 2133638
# 07/10/24 

Grupo <- gl(2,12, labels = c("Fotografia", "Araña"))
Nivel_Ansiedad <- c(30,35,45,40,50,35,55,25,30,45,40,50,40,35,50,55,
              65,55,50,35,30,50,60,39)

Datos <-data.frame(Grupo, Nivel_Ansiedad)
head(Datos)

# Hipotesis es mayor ansiedad cuando tienen la araña en las manos, que cuando solo la ven.

tapply(Datos$Nivel_Ansiedad, Datos$Grupo,mean)

boxplot(Datos$Nivel_Ansiedad ~ Datos$Grupo)

t.test(Datos$Nivel_Ansiedad ~ Datos$Grupo, var.equal = T)

t.test(Datos$Nivel_Ansiedad ~ Datos$Grupo, var.equal = T,
       alternative = "greater")

t.test(Datos$Nivel_Ansiedad ~ Datos$Grupo, var.equal = T,
       alternative = "less")



