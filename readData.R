readCachedData <- function(path, date1, date2) {
    df <- NULL

    get <- function() {
        
        if(is.null(df)) {
            df <<- readDataImplementation(path, date1, date2)
            message("Data cached")
        }
        df
    }

    list(get=get)
}


readDataImplementation <- function(path, date1, date2) {
    message("Loading data from file")
    df <- read.table(path, header=T, sep=";")
    df[df$Date == date1 | df$Date == date2, ]    
}



getCachedData <- function() {
    readCachedData("household_power_consumption.txt", "1/2/2007", "2/2/2007")
}

