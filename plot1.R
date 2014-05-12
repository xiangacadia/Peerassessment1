## load data in
data <- read.csv("/Users/xiangjiang/Documents/git/Data Science at Coursera/5.Exploratory data analysis/household_power_consumption.txt",
                 sep = ";",na.strings = "?")

## take subset of data
data = subset(data,Date == '1/2/2007' |  Date == '2/2/2007')

## string to date
#data$Date <- as.Date(strptime(data$Date, "%d/%m/%y"))
#data$Time <- as.Date(data$Time,"%H/%M/%S")

## type convertion
data$Global_active_power <- as.double(data$Global_active_power)

png(filename="plot1.png", width=480, height=480)

## plot
hist(data$Global_active_power,freq=TRUE, col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")

dev.off()
