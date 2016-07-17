#set working directory
setwd("~/Desktop/Coursera/exploratory-data-analysis/ExData_Plotting1")
#read in data
household_power_consumption <- read.csv("~/Desktop/Coursera/exploratory-data-analysis/ExData_Plotting1/household_power_consumption.txt", sep=";", na.strings="?")
#print to png
png(filename = "plot4.png")
#make device print 4 plots 2x2
par(mfrow = c(2,2))
#create line graph of global active power
with(housey, plot(datetime,Global_active_power, type = "l", ylab = "Global active power", xlab = "" ))
#create line graph of voltage
with(housey, plot(datetime,Voltage, type = "l", ylab = "Voltage"))
#create plot for submetering with color line corresponding to observation
with(housey, {
  plot(datetime, Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
  lines(datetime, Sub_metering_2, col= "red")
  lines(datetime, Sub_metering_3, col = "blue" )
})
#Create legend for plot
legend("top", col = c("black","red", "blue"), lty = 1,legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), bty="n", seg.len = .8)
#create line graph of global reactive power
with(housey, plot(datetime,Global_reactive_power, type = "l"))
#turn device off!
dev.off()
