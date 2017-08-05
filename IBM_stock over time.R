setwd('~/R')
IBM_stock <- read.csv('IBM.csv', header=TRUE)
library(scales)
library(ggplot2)

IBM_stock$date <- as.Date(IBM_stock$date, format='%m/%d/%Y')

#str(IBM_stock)
#summary(IBM_stock)
show(IBM_stock[1,])

time_analysis <- ggplot(IBM_stock, aes(x=date, y=close)) +
  geom_line(colour = 'green3') +
  geom_smooth(colour = 'blue3') +
  geom_smooth(method='lm', colour='grey')
time_analysis +
  ggtitle('IBM Stock Prices Daily Since 1/2/1962')

