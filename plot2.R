############################################################
## PLot #2
rdt <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings="?", stringsAsFactors = FALSE)
dt <- rdt[rdt$Date %in% c("1/2/2007", "2/2/2007"),]
dt$Time <- strptime(paste(dt$Date, dt$Time), format="%d/%m/%Y %H:%M:%S")
dt$Date <- as.Date(dt$Date, format="%d/%m/%Y")
library(datasets)
png(filename = "Plot2.png",
    width = 480, height = 480, units = "px", pointsize = 12,
     bg = "white",  res = NA)
plot(dt$Time, dt$Global_active_power, type="o", xlab="", pch=".", ylab="Global Active Power (killowatts)")
dev.off()
##
##
############################################################