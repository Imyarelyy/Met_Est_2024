# Yarely Danay Davila Martinez 
#2133638
#15/10/2024

grupo <- gl(2,10, labels = c("grupo_1", "grupo_2"))
altura <- c(23, 17.4, 17, 20.5, 22.7, 24, 22.5, 22.7, 19.4, 18.8, 8.5, 9.6, 
            7.7, 10.1, 9.7, 13.2, 10.3, 9.1, 10.5, 7.4)
datos <- data.frame(grupo, altura)


#determinar medias

tapply(datos$altura, datos$grupo, mean)

boxplot(datos$altura, datos$grupo, ylab = "Altura (cm)", 
        xlab = "Grupos", col = "green")

shapiro.test(datos$altura)
bartlett.test(datos$altura ~ datos$grupo)

t.test(datos$altura ~ datos$grupo, var.equal = T, alternative = "greater")



grupo <- gl(2, 10, labels = c("Layer_1", "Layer_2"))
carbono <-c(1.59, 1.39, 1.64, 1.17, 1.27, 1.58, 1.64, 1.53, 1.21, 1.48, 1.21, 
            0.92, 1.31, 1.52, 1.62, 0.91, 1.23, 1.21, 1.58, 1.18)
datos <- data.frame(grupo, carbono)

tapply(datos$carbono, datos$grupo, mean)
boxplot(datos$carbono ~ datos$grupo, col = "blue",
        xlab = "temporadas",
        ylab = "carbono")

t.test(datos$carbono ~ datos$grupo, paired = T, alternative = "less")

