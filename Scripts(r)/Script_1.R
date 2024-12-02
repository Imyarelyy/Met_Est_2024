# Yarely Davila 

#20/08/2024


# Problema 1 -------------------------------------------------------------------

# Ingresar en objetos la superficie reforestada por especie 

Pinus <- 3140
Mezquite <- 1453
Encinos <- 450
Teka <- 1200
Junuiperos <- 720

Superficie <- c(Pinus, Mezquite, Encinos, Teka, Junuiperos)
sup <- c(3140, 1453, 450, 1200, 720)

sup
Superficie

#Operaciones 
#Transformar ha a m2
m2 <- Superficie * 1000
sup * 1000

nombre <- c("Pinus", "Mez", "Teka", "Jun", "Encinos")
sup2 <- sort(sup, decreasing = T)

barplot (sup2, ylim =c(0,3500),
        col = "aquamarine3", names.arg = nombre,
        xlab = "Especies",
        ylab = "Superficie(ha)",
        main = "Reportes CONAFOR")

