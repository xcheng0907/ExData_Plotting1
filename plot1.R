# exploratoryAnalysis Project 1
setwd("/home/xcheng0907/GoogleDrive/Courses/DataScience_Coursera/ExploratoryAnalysis/ExData_Plotting1")

# read the data 
hpc = read.table("./data/small_data.txt", header=T, sep=";", na.strings = "?")


# plotting 1
png(filename='plot1.png',width=480,height=480, units='px')
hist(hpc$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", ylab="Frequency", main="Global Active Power")
dev.off()