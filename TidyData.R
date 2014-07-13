TidyData <- function(){

fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

download.file(fileURL, destfile = "household_power_consumption.zip", method = "curl")

closeAllConnections()

DF <- read.table(unz("household_power_consumption.zip", filename="household_power_consumption.txt"), 
                            sep = ";", header = T, na.strings = "?", stringsAsFactors=F)

DF$DateTime <- strptime(paste(DF$Date, DF$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

TidyData <- subset(DF, Date == "1/2/2007" | Date == "2/2/2007")

TidyData
}
