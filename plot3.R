# plot 3
png(filename = 'plot3.png', width = 480, height = 480)
with(powerconsumption, {
  plot(DateTime, Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
  lines(DateTime, Sub_metering_2, col = 'Red')
  lines(DateTime, Sub_metering_3 , col = 'Blue')
})
legend("topright", col = c("black", "red", "blue"), lty = 1,  
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
