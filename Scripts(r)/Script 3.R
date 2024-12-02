# Importar datos de Github
# 10/sep/24
# Yarely Davila Martinez 
# Datos madera 

url <- "https://raw.githubusercontent.com/mgtagle/Met_Est_2024/main/Datos_Madera_MET.csv"

madera <- read.csv(url, header = T)

boxplot(madera$Peso_g ~ madera$Especie,
        col = "lightgreen")
# se observa que pueden llegar a ser normales pero se necesita una prueba para estar seguros 

# Comparar la normalidad de la variable 
shapiro.test(madera$Peso_g)

# Comparar la varianza 
bartlett.test(madera$Peso_g ~ madera$Especie)

#Homogenisar valores 

madera$peso_t <- sqrt(madera$Peso_g)


# boxplot---------------------------------------------------------------------------------------------------
boxplot(madera$peso_t ~ madera$Especie)

t.test(madera$Peso_g ~ madera$Especie, var.equal = T)

boxplot(madera$Lado_C ~ madera$Especie,
        col = "pink")

which(madera$Lado_C > 20.5)

shapiro.test(madera$Lado_C)

bartlett.test(madera$Lado_C ~ madera$Especie)



