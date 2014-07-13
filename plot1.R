# source in the R program file which prepares TidyData
source("TidyData.R")

draw_histplot <- function(){
        
        # Assign the dataframe from the Tidy data function
        TidyData <- TidyData()
        
        # set margins, background
        par(mar= c(4, 4, 2, 1), bg="white")
        
        # draw histogram with the Gbl_Actv_Power vector
        hist(TidyData$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")
        
        # copy the plot from the screen device to .png file
        dev.copy(png, file="plot1.png", width = 480, height = 480, units = "px", bg = "white")
        
        # close device connection
        dev.off()
}