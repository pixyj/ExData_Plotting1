plot2 <- function(df) {
    
    message("Plotting plot2")
    globalActivePower <- as.numeric(df[, "Global_active_power"])
    
    png(file="plot2.png", width=480, height=480)
    
    plot(globalActivePower, main="Global Active Power", 
        ylab="Global Active Power (kilowatts)", type="l", lwd=2)

    dev.off()

    message("Done")

}
