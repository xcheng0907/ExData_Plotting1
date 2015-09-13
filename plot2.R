# exploratoryAnalysis Project 1
library(lubridate)
setwd("/home/xcheng0907/GoogleDrive/Courses/DataScience_Coursera/ExploratoryAnalysis/ExData_Plotting1")

# read the data 
hpc = read.table("./data/small_data.txt", header=T, sep=";", na.strings = "?")
hpc$date_time = ymd(hpc$Date) + hms(hpc$Time)

# plotting 2
png(filename='plot2.png',width=480,height=480, units='px')
plot(hpc$date_time, hpc$Global_active_power, type='l', ylab="Global Active Power (kilowatts)", xlab="")
dev.off()
