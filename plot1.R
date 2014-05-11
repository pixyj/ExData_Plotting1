plot1 <- function(df) {
    
    message("Plotting plot1")
    globalActivePower <- as.numeric(df[, "Global_active_power"]) / 1000
    
    globalActivePower <- as.numeric(df[, "Global_active_power"]) / 1000

    png(file="plot1.png", width=480, height=480)

    hist(globalActivePower, col="red", main="Global Active Power", 
         xlab="Global Active Power (kilowatts)", xlim=c(0,6))



    dev.off()

    message("Done")

}
