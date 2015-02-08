# plot 2
png(filename = 'plot2.png', width = 480, height = 480)
plot(powerconsumption$DateTime, powerconsumption$Global_active_power, type = "l", 
     xlab = "", ylab = "Global Active Power (kilowatts)", yaxp = c(0, 6, 3))
dev.off()
