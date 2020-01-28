A <- c(-1,+1,-1,+1)
B <- c(-1,-1,+1,+1)
y <- c( 3, 5, 4, 9)

biscuit_taste=lm(y~A+B+A*B)
biscuit_taste