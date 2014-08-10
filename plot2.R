ts1<- ts(data$V3,frequency=365)

plot(ts1,ylab="Active Global power(killowat)")  


dev.copy(png,file="plot 2")
dev.off()
