A <- B <- C <- c(-1,+1)                #creates 3 variables in one line

design <- expand.grid(A=A, B=B, C=C)   #expands in to standard order table
A <- design$A
B <- design$B
C <- design$C

y <- c(30,15,32,18,24,10,27,14)

symptom_reports <- lm(y ~ A*B*C)
summary(symptom_reports)