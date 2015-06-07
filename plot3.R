############################################################
## PLot #3
rdt <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?", stringsAsFactors = FALSE)
dt <- rdt[rdt$Date %in% c("1/2/2007", "2/2/2007"),]
dt$Time <- strptime(paste(dt$Date, dt$Time), format="%d/%m/%Y %H:%M:%S")
dt$Date <- as.Date(dt$Date, format="%d/%m/%Y")
library(datasets)
png(filename = "Plot3.png",
    width = 480, height = 480, units = "px", pointsize = 12,
     bg = "white",  res = NA)
plot(dt$Time, dt$Sub_metering_1, type="n", xlab="", pch=".", ylab="Energy sub metering")
points(dt$Time, dt$Sub_metering_1, type="o", pch=".", col="black")
points(dt$Time, dt$Sub_metering_2, type="o", pch=".", col="red")
points(dt$Time, dt$Sub_metering_3, type="o", pch=".", col="blue")
legend("topright", pch ='-', col=c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
##
##
############################################################