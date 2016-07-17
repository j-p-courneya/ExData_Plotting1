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
#creat png
png(filename = "plot2.png")
#create plot 
with(housey, plot(datetime,Global_active_power, type = "l"))
#turn device off!
dev.off()
