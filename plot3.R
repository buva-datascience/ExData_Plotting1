# source in the R program file which prepares TidyData
source("TidyData.R")
draw_plot_and_lines <- function(){
        
        # Assign the dataframe from the Tidy data
        TidyData <- TidyData()
        
        # set margins, background
        par(mar= c(4, 4, 2, 1), bg="white")
        
        # draw 1st plot 
        plot(TidyData$DateTime, TidyData$Sub_metering_1, xlab="", type="l", ylab="Energy sub metering")
        
        # Add lines to the same graphic device on top of the plot
        lines(TidyData$DateTime, TidyData$Sub_metering_2, col="red")
        lines(TidyData$DateTime, TidyData$Sub_metering_3, col="blue")
        
        #start annotation to add legend for distinguishing the lines
        legend("topright", col = c("black", "red", "blue"), legend = c("Sub_Metering_1", "Sub_Metering_2","Sub_metering_3"), lty=c(1,1,1))
        
        # copy the plot from the screen device to .png file
        dev.copy(png, file="plot3.png", width = 480, height = 480)
        
        dev.off()
}