
inputFile <- read.table("./Rdata/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetInput <- inputFile[inputFile$Date %in% c("1/2/2007","2/2/2007") ,]
dateTime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("./Rdata/plot2.png", width=480, height=480)
plot(dateTime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()