data<-read.csv("forestfires.csv")
library(ggplot2)

coord2<-data[,c(1,2,13)]
coord2$area<-log(coord2$area+1)
coord2$Y<-10-coord2$Y

ggplot(coord2, aes(x = X, y = Y, fill = area)) +
  geom_tile() +
  scale_fill_gradient(low = "yellow", high = "red")

