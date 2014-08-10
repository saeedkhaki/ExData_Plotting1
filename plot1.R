data$V3<- as.numeric(data$V3)

hist(data$V3,col="red",breaks=8,main="Global Active power",xlab="Active Global power(killowat)")

dev.copy(png,file="plot 1")
dev.off()
