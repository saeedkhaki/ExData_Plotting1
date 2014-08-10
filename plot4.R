data <- read.table("household_power_consumption.txt", sep=";")

data<-data[-1,]   #omiting first row (because this was name)

#changing columns name to the default

colnames(data) <- c("Date"," Time"," Global_active_power", "Global_reactive_power", "Voltage" ,"Global_intensity", "Sub_metering_1", "Sub_metering_2","Sub_metering_3")

sub1<-subset(data,Date=="1/2/2007")

sub2<-subset(data,Date=="2/2/2007")
#this is the final data set
sub3<-rbind(sub1,sub2)


sub3[,3]<-as.numeric(as.character(sub3[,3])) # Global_reactive_power


sub3[,5]<-as.numeric(as.character(sub3[,5]))  #Voltage

sub3[,4]<-as.numeric(as.character(sub3[,4])) #Global_active_power

par(mfrow=c(2,2))

#------------
tk<- ts(sub3[,3],frequency=1440)
plot(tk,ylab="Global Active Power(kilowatts)")   

#------------

tg<- ts(sub3[,5],frequency=1440)
plot(tg,ylab="Voltage")  


#------------

sub3[,7]<-as.numeric(as.character(sub3[,7]))

sub3[,8]<-as.numeric(as.character(sub3[,8]))

sub3[,9]<-as.numeric(as.character(sub3[,9]))

ts1<- ts(sub3[,7],frequency=1440)

ts2<- ts(sub3[,8],frequency=1440)

ts3<- ts(sub3[,9],frequency=1440)

plot(ts1,ylab="Energy Sub metering",type="n")

points(ts1,col="black",type="o",pch=20)

points(ts2,col="red",type="o",pch=20)

points(ts3,col="blue",type="o",pch=20)

#----------------------------

tg<- ts(sub3[,4],frequency=1440)
plot(tg,ylab="Global_reactive_power")  



#--------------------


dev.copy(png,file="plot 4")
dev.off()


# sorry i could not upload the picure... i cant work with github very well...  please run the code...for god sake 
# I spend two day on this.. but finally i could not upload the PNG files ... I did not have time much time









