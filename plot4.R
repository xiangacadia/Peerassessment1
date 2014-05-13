## load data in
data <- read.csv("/Users/xiangjiang/Documents/git/Data Science at Coursera/5.Exploratory data analysis/household_power_consumption.txt",
                 sep = ";",na.strings = "?")

## take subset of data
data = subset(data,Date == '1/2/2007' |  Date == '2/2/2007')

## string to date
#data$Date <- as.Date(strptime(data$Date, "%d/%m/%y"))
#data$Time <- as.Date(data$Time,"%H/%M/%S")

time <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")

## type convertion
data$Global_active_power <- as.double(data$Global_active_power)
data$Sub_metering_1 <- as.double(data$Sub_metering_1)
data$Sub_metering_2 <- as.double(data$Sub_metering_2)
data$Sub_metering_3 <- as.double(data$Sub_metering_3)
data$Voltage <- as.double(data$Voltage)
data$Global_reactive_power <- as.double(data$Global_reactive_power)

png(filename="/Users/xiangjiang/Documents/git/Peerassessment1/plot4.png", width=480, height=480)

par(mfrow=c(2,2))

## plot
## subplot 1
plot(time, data$Global_active_power,"l",ylab="Global Active Power (kilowatts)")

## subplot 2
plot(time, data$Voltage,"l",ylab="Voltage")

## subplot 3
plot(time, data$Sub_metering_1, type="l", col="black", ylab="Energy sub metering")
lines(time, data$Sub_metering_2, col="red")
lines(time, data$Sub_metering_3, col="green")

## subplot 4
plot(time, data$Global_reactive_power,"l",ylab="Global reactive power")


dev.off()
