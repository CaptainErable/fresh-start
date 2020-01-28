A <- B <- C <- c(-1,+1)                #creates 3 variables in one line

design <- expand.grid(A=A, B=B, C=C)   #expands in to standard order table
A <- design$A
B <- design$B
C <- design$C

y <- c(14,16,14,16,17,21,15,22)

delivery_time <- lm(y ~ A*B*C)
summary(delivery_time)

library(pid)
paretoPlot(delivery_time)