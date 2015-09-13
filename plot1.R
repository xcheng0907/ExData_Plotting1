# exploratoryAnalysis Project 1
setwd("/home/xcheng0907/GoogleDrive/Courses/DataScience_Coursera/ExploratoryAnalysis/ExData_Plotting1")

# read the data 
hpc = read.table("household_power_consumption.txt", header=T, sep=";", na.strings = "?")
hpc$Date = as.Date(hpc$Date, "%d/%m/%Y")

# subset the data to 2 days
d1 = as.Date("2007-02-01", "%Y-%m-%d")
d2 = as.Date("2007-02-02", "%Y-%m-%d")
hpc = hpc[hpc$Date ==d1 | hpc$Date==d2, ]
write.table(hpc, file="small_data.txt")

# plotting 1

