# Examen parcial 
# Yarely Davila 2133638

parcela <- read.csv("https://raw.githubusercontent.com/mgtagle/Met_Est_2024/refs/heads/main/Datos_Examen/parcelas.csv", header = T)


# Normalidad de los datos 
shapiro.test(parcela$Diámetro)


boxplot(parcela$Diámetro, 
        col = "lightgreen",
        xlab = "Parcela",
        ylab = "Diametro")

t.test(parcela$Diámetro ~ parcela$Parcelas, paired = T, alternative = "less")



