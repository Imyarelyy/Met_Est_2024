# Yarely Davila 
# 2133638
# 20/AGOSTO/24
# Laboratorio 1 

celular <- 300
transporte <- 240
comestibles <- 1527
gym <- 400
alquiler <- 1500
otros <- 1833

# Gastos totales por mes---------------------------------------------------

gastos <- c(300, 240, 1527, 400, 1500, 1833)

300 + 240 + 1527 + 400 + 1500 + 1833

#Total= 5800

# Gastos en un semetre (5 meses)--------------------------------------------

5800 * 5

#Total= 29000

# Gasto en un año (10 meses)-----------------------------------------------

5800 * 10

#Total= 58000

#barplot----------------------------------------------------------------------

gastos2 <- c("otros", "comestibles", "alquiler", "gym", "celular", "transporte")
gas <- sort(gastos, decreasing = T)
barplot (gas, ylim= c (0,2000), names.arg = gastos2, col = "purple",
         xlab = "Concepto", ylab = "Dinero",
         main = "Gastos")