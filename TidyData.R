# This function will prepare the data for the plotting operations
# Downloads the zip file from the website location mentioned 
# Unzip and Read the file to the dataframe for Tidying the data

TidyData <- function(){

        # Assign the file website location 
        fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

        # Download the file from the website location to the local directory
        download.file(fileURL, destfile = "household_power_consumption.zip", method = "curl")
        
        # Close any existing connections
        closeAllConnections()

        # Unzip and read into a dataframe        
        DF <- read.table(unz("household_power_consumption.zip", filename="household_power_consumption.txt"), 
                            sep = ";", header = T, na.strings = "?", stringsAsFactors=F)

        # Format DateTime and add it to the Dataframe
        DF$DateTime <- strptime(paste(DF$Date, DF$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

        # Subset dataframe which ONLY has Feb 1 and Feb 2 data
        TidyData <- subset(DF, Date == "1/2/2007" | Date == "2/2/2007")

        # Return subset dataframe
        TidyData
}
