D <- N <- P <- c(-1,+1)                #creates 3 variables in one line

design <- expand.grid(D=D, N=N, P=P)   #expands in to standard order table
D <- design$D
N <- design$N
P <- design$P

D <- c(D,-1,+1)
N <- c(N,0,-0.5)
P <- c(P,+1,+1)

y <- c(64,68,72,70,78,80,82,80,84,86)

average_score <- lm(y ~ D*N*P)
summary(average_score)

library(pid)
paretoPlot(average_score)