# Link for datafile - "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
consumpData <- read.table("household_power_consumption.txt", header=T, sep=";")
head(consumpData)
str(consumpData)
consumpData$Date <- as.Date(consumpData$Date, format="%d/%m/%Y")
consumpFeb <- subset (consumpData, (consumpData$Date == "2007-02-01") | (consumpData$Date == "2007-02-02") )
consumpFeb$Global_active_power <- as.numeric(as.character(consumpFeb$Global_active_power))
hist(consumpFeb$Global_active_power, main = paste("Global Active Power"), col="red", xlab="Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()


