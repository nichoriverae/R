setwd('~/R')
library(ggplot2)
gasoline <- read.csv('gasoline_prices.csv', header=TRUE)

gasoline$date <- as.Date(gasoline$date, format='%m/%d/%Y')
gasoline$price <- as.numeric(sub('\\$', '', as.character(gasoline$price)))

gasPrice_overTime <- ggplot(gasoline, aes(x=date, y=price)) +
  ggtitle('Gasoline Prices over Time') +
  geom_point(colour='blue') +
  geom_smooth(method='lm', colour='red') +
  geom_line(colour='green4')


gasPrice_overTime

str(gasoline)
show(gasoline)
