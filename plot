

# I hadnot had time i sepreted two day manually
data = read.table("saeed.txt", sep=";")

plot 1

data$V3<- as.numeric(data$V3)

hist(data$V3,col="red",breaks=8,main="Global Active power",xlab="Active Global power(killowat)")

dev.copy(png,file="plot 1")
dev.off()

#plot2


ts1<- ts(data$V3,frequency=365)

plot(ts1,ylab="Active Global power(killowat)")  


dev.copy(png,file="plot 2")
dev.off()
