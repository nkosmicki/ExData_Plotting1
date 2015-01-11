
 
inputFile <- read.table("./Rdata/household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subsetInput <- inputFile[inputFile$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(subsetInput$Global_active_power)
png(filename = "./Rdata/plot1.png", width = 480, height = 480)
hist(globalActivePower, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()