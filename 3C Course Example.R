C <- T <- S <- c(-1,+1)           #creates 3 variables in one line

design <- expand.grid(C=C, T=T, S=S)   #expands in to standard order table
C <- design$C
T <- design$T
S <- design$S

y <- c(5,30,6,33,4,3,5,4)
# Avoid using this form - it is error prone :
# water <- lm(y~C+T+S+C*T+C*S+S*T+C*T*S)

# Rather use this form:
water <- lm(y~C*T*S)
summary(water)

library(pid)
paretoPlot(water)