# Yarely Davila
# 2133638 

# Clase Anova
# Experimento de cuatro parajes y sus diámetros 
# Parajes en chihuahua 
# 12/11/24

# Importar datos----------------------------------------------------------------------------------------------------------------------------------------------
 
library("repmis")
paraje <- source_data("https://www.dropbox.com/s/fbrwxypacjgeayj/Datos_Rascon_Anova.csv?dl=1")


boxplot(paraje$DAP ~ paraje$Paraje)

tapply(paraje$DAP, paraje$Paraje, mean)
tapply(paraje$DAP, paraje$Paraje, var)

shapiro.test(paraje$DAP)
bartlett.test(paraje$DAP ~ paraje$Paraje)

par.aov <- aov(paraje$DAP ~ paraje$Paraje)
summary(par.aov)


# Prueba de Tukey--------------------------------------------------------------------------------------------------------------------------------------

TukeyHSD(par.aov)
plot(TukeyHSD(par.aov))
