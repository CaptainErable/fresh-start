#Part of Module 3 of Experimentation for Improvement on Coursera
#Case study looking at developping a linear model for number of popped corn with some initial data points

A <- c(-1,+1,-1,+1)                     # -1 : 160s, +1 : 200s
B <- c(-1,-1,+1,+1)                     # -1 : white corn, +1 : yellow corn
y <- c(52,74,62,80)                     # number of kernels popped
popped_corn = lm(y ~ A + B + A*B)
summary(popped_corn)

popped <- lm(y ~ A*B)
summary(popped)
