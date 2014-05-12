## load data in
data <- read.csv("/Users/xiangjiang/Documents/git/Data Science at Coursera/5.Exploratory data analysis/household_power_consumption.txt",
                 sep = ";")
## string to date
data$Date <- as.Date(strptime(data$Date, "%d/%m/%y"))


