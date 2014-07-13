# source in the R program file which prepares TidyData
source("TidyData.R")

draw_plot <- function(){
        
        # Assign the dataframe from the Tidy data function
        TidyData <- TidyData()
        
        # set margins, background
        par(mar= c(4, 4, 2, 1), bg="white")
        
        # draw a plot 
        plot(TidyData$DateTime, TidyData$Global_active_power, xlab="", type="l", ylab="Global Active Power (kilowatts)")
        
        # copy the plot from the screen device to .png file
        dev.copy(png, file="plot2.png", width = 480, height = 480)
        
        dev.off()
}