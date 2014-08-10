data = read.table("saeed.txt", sep=";")

#i seprated it first manaully sorry... i had not had much time only 1 hour 

data$V3<- as.numeric(data$V3)

ts1<- ts(data$V3,frequency=365)

plot(ts1,ylab="Active Global power(killowat)")  


dev.copy(png,file="plot 2")
dev.off()
