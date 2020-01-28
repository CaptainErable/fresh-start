# Solar panel case study, from BHH2, p 230

#install.packages("pid")  # Only required once, if you've not installed "pid" already --> done for 3C
library(pid)
data("solar")


model_y1 <- lm(y1 ~ A*B*C*D, data=solar)    # collection efficiency model
summary(model_y1)
paretoPlot(model_y1)


model_y2 <- lm(y2 ~ A*B*C*D, data=solar)    # energy delivery efficiency model
summary(model_y2)
paretoPlot(model_y2)