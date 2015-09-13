# exploratoryAnalysis Project 1
library(lubridate)
setwd("/home/xcheng0907/GoogleDrive/Courses/DataScience_Coursera/ExploratoryAnalysis/ExData_Plotting1")

# read the data 
hpc = read.table("./data/small_data.txt", header=T, sep=";", na.strings = "?")
hpc$date_time = ymd(hpc$Date) + hms(hpc$Time)

# plotting 2
png(filename='plot4.png',width=480,height=480, units='px')
par(mfrow=c(2,2))
with(hpc, plot(date_time, Global_active_power, type='l', ylab="Global Active Power", xlab=""))

with(hpc, plot(date_time, Voltage, type='l', col="black", ylab="Voltageg", xlab="datetime"))

with(hpc, plot(date_time, Sub_metering_1, type='l', col="black", ylab="Energy sub meeting", xlab=""))
with(hpc, lines(date_time, Sub_metering_2, col='red'))
with(hpc, lines(date_time, Sub_metering_3, col='blue'))
legend("topright", lty='solid', col=c("black", "red","blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"  ))

with(hpc, plot(date_time, Global_reactive_power, type='l', col="black", xlab="datetime"))

dev.off()

