r#set working directory
setwd("~/Desktop/Coursera/exploratory-data-analysis/ExData_Plotting1")
#read in data
housey <- read.csv("~/Desktop/Coursera/exploratory-data-analysis/ExData_Plotting1/household_power_consumption.txt",
                   sep=";", na.strings="?", stringsAsFactors = FALSE, skip = 66637, nrows = 2880, header = FALSE)
#create a names vector
household_power_consumption_names<- read.csv("~/Desktop/Coursera/exploratory-data-analysis/ExData_Plotting1/household_power_consumption.txt", 
                                             sep=";", na.strings="?", stringsAsFactors = FALSE, nrows = 1,header = F)
#assign names to housey variables
names(housey) <- household_power_consumption_names
#print to png
png(filename = "plot3.png")
#create plot for submetering with color line corresponding to observation
with(housey, {
  plot(datetime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
  lines(datetime, Sub_metering_2, col= "red")
  lines(datetime, Sub_metering_3, col = "blue" )
})
#Create legend for plot
legend("top", col = c("black","red", "blue"), lty = 1,legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty="n", seg.len = .8)
#turn device off!
dev.off()
