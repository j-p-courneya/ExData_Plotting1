#set working directory
setwd("~/Desktop/Coursera/exploratory-data-analysis/ExData_Plotting1")
#read in data
housey <- read.csv("~/Desktop/Coursera/exploratory-data-analysis/ExData_Plotting1/household_power_consumption.txt",
                   sep=";", na.strings="?", stringsAsFactors = FALSE, skip = 66637, nrows = 2880, header = FALSE)
#create a names vector
household_power_consumption_names<- read.csv("~/Desktop/Coursera/exploratory-data-analysis/ExData_Plotting1/household_power_consumption.txt", 
                                             sep=";", na.strings="?", stringsAsFactors = FALSE, nrows = 1,header = F)
#assign names to housey variables
names(housey) <- household_power_consumption_names
#set device parameters
par(mfrow = c(1,1))
#print to png
png(filename = "plot1.png")

#create histogram for plot1
hist(housey$Global_active_power, col = "red", xlab = "Global active power (Killowats)", 
     main = "Global Active Power")
#turn off device!
dev.off()





