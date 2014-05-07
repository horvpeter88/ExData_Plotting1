power.consumption <- read.csv("household_power_consumption.txt", sep=";", na.strings="?", skip=66637, nrows=2880,colClasses=c("character", "character", "numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
data <- as.data.frame(cbind(paste(power.consumption$V1, power.consumption$V2), power.consumption[,3], power.consumption[,4], power.consumption[,5], power.consumption[,6], power.consumption[,7],power.consumption[,8], power.consumption[,9]))
header <- c("Date", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
names(data) <- header
data$Date <- strptime(data$Date, format="%d/%m/%Y %H:%M:%S")
with(data, {plot(Date, Global_active_power, pch="", xlab="", ylab="Global active power (kilowatts)")
lines(data$Date, data$Global_active_power)})
dev.copy(png, file="plot2.png")
dev.off()