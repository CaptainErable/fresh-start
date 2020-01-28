T <- H <- C <- D <- c(-1,+1)                #creates 4 variables in one line

design <- expand.grid(T=T, H=H, C=C, D=D)   #expands in to standard order table
T <- design$T
H <- design$H
C <- design$C
D <- design$D

y <- c(288,295,235,278,300,312,298,305,265,282,230,260,292,300,281,288)

distance <- lm(y ~ T*H*C*D)
summary(distance)

library(pid)
paretoPlot(distance)
