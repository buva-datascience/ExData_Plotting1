# source in the R program file which prepares TidyData
source("TidyData.R")
draw_multiPlots <- function(){
        
        # Assign the dataframe from the Tidy data
        TidyData <- TidyData()
        
        # set margins, background and mfrow
        par(bg="white", mfrow=c(2,2))
        
        
        # draw multiplots as per the sequence given below
        plot(TidyData$DateTime, TidyData$Global_active_power, xlab="", type="l", ylab="Global Active Power (kilowatts)")
        plot(TidyData$DateTime, TidyData$Voltage, type="l", ylab="Voltage", xlab="datetime")
        plot(TidyData$DateTime, TidyData$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="")
        lines(TidyData$DateTime, TidyData$Sub_metering_2, col="red")
        lines(TidyData$DateTime, TidyData$Sub_metering_3, col="blue")
        legend("topright", col = c("black", "red", "blue"), legend = c("Sub_Metering_1", "Sub_Metering_2","Sub_metering_3"), lty=c(1,1,1))
        plot(TidyData$DateTime, TidyData$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")
        
        # copy the plot from the screen device to .png file
        dev.copy(png, file="plot4.png", width = 480, height = 480)
        
        dev.off()
}