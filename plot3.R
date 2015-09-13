# exploratoryAnalysis Project 1
library(lubridate)
setwd("/home/xcheng0907/GoogleDrive/Courses/DataScience_Coursera/ExploratoryAnalysis/ExData_Plotting1")

# read the data 
hpc = read.table("./data/small_data.txt", header=T, sep=";", na.strings = "?")
hpc$date_time = ymd(hpc$Date) + hms(hpc$Time)

# plotting 2
png(filename='plot3.png',width=480,height=480, units='px')
with(hpc, plot(date_time, Sub_metering_1, type='l', col="black", ylab="Energy sub meeting", xlab=""))
with(hpc, lines(date_time, Sub_metering_2, col='red'))
with(hpc, lines(date_time, Sub_metering_3, col='blue'))
legend("topright", lty='solid', col=c("black", "red","blue"), legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"  ))
dev.off()

