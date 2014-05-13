## load data in
data <- read.csv("/Users/xiangjiang/Documents/git/Data Science at Coursera/5.Exploratory data analysis/household_power_consumption.txt",
                 sep = ";",na.strings = "?")

## take subset of data
data = subset(data,Date == '1/2/2007' |  Date == '2/2/2007')

time <- strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S")

## type convertion
data$Global_active_power <- as.double(data$Global_active_power)

png(filename="/Users/xiangjiang/Documents/git/Data Science at Coursera/5.Exploratory data analysis/plot2.png", width=480, height=480)

## plot
plot(time, data$Global_active_power,"l",ylab="Global Active Power (kilowatts)")


dev.off()
