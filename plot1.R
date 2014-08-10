data = read.table("saeed.txt", sep=";")

#i seprated it first manaully sorry... i had not had much time only 1 hour 

data$V3<- as.numeric(data$V3)

data$V3<- as.numeric(data$V3)

hist(data$V3,col="red",breaks=8,main="Global Active power",xlab="Active Global power(killowat)")

dev.copy(png,file="plot 1")
dev.off()
