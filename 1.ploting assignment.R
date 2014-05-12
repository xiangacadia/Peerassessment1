## load data in
data <- read.csv("/Users/xiangjiang/Documents/git/Data Science at Coursera/5.Exploratory data analysis/household_power_consumption.txt",
                 sep = ";")
strptime(x, "%m/%d/%y")
data$Date <- as.Date(data$Date, x)