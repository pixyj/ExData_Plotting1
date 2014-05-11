plot1 <- function(df) {
    
    message("Plotting plot1")
    globalActivePower <- as.numeric(df[, "Global_active_power"])
    
    png(file="plot1.png", width=480, height=480)
    
    hist(globalActivePower, col="red", main="Global Active Power", 
        xlab="Global Active Power (kilowatts)")

    dev.off()

    message("Done")

}
