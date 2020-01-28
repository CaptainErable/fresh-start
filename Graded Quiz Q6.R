A <- B <- C <- c(-1,+1)                #creates 3 variables in one line

design <- expand.grid(A=A, B=B, C=C)   #expands in to standard order table
A <- design$A
B <- design$B
C <- design$C

y <- c(39,35,40,41,40,38,41,42)

time <- lm(y ~ A*B*C)
summary(time)

#A <- c(A,0)                    #used for answer 1
#B <- c(B,0)
#C <- c(C,0)
#y <- c(y,40.5)

#time <- lm(y ~ A*B*C)
#summary(time)

library(pid)
paretoPlot(time)