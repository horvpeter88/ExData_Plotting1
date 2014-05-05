power.consumption <- read.csv("household_power_consumption.txt", header=T, sep=";", na.strings="?", skip=66637, nrows=2880,colClasses=c("Date", "character", "numeric","numeric","numeric","numeric","numeric","numeric","numeric"))
hist(power.consumption$Global_active_power, xlab="Global Active Power (kilowatts)", main="Global Active Power", col="red")
dev.copy(png, file="plot1.png")