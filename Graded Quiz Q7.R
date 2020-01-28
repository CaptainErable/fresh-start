A <- B <- C <- c(-1,+1)                #creates 3 variables in one line

design <- expand.grid(A=A, B=B, C=C)   #expands in to standard order table
A <- design$A
B <- design$B
C <- design$C

y <- c(450,492,390,408,432,450,318,312)

A <- c(A,-2, 0, 0)                    
B <- c(B,-1, 1,-1)
C <- c(C,-1, 1, 1)
y <- c(y,354, 318, 420)

time <- lm(y ~ A*B*C)
summary(time)

library(pid)
paretoPlot(time)