source("readData.R")
cachedData <- getCachedData()
df <- cachedData$get()

source("plot1.R")
plot1(df)

source("plot2.R")
plot2(df)

