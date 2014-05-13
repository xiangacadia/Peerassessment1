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

png(filename="/Users/xiangjiang/Documents/git/Peerassessment1/plot3.png", width=480, height=480)

## plot
plot(time, data$Sub_metering_1, type="l", col="black" )
lines(time, data$Sub_metering_2, col="red")
lines(time, data$Sub_metering_3, col="green")

legend('topright', c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty = c(1,1,1),
       col = c('black', 'red', 'blue'))

dev.off()
