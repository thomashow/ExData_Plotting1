# plot 4
png(filename = 'plot4.png', width = 480, height = 480)
par(mfrow = c(2, 2))
with(powerconsumption, {
  # top left
  plot(DateTime, Global_active_power, type = "l", ylab = "Global Active Power", 
       xlab = "", yaxp = c(0, 6, 3))
  
  # top right
  plot(DateTime, Voltage, type = "l", ylab = "Voltage", xlab = "datetime", 
       yaxp = c(234, 246, 6))
  
  # bottom left
  plot(DateTime, Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "", col = "black")
  lines(DateTime, Sub_metering_2, col = 'Red')
  lines(DateTime, Sub_metering_3, col = 'Blue')
  legend("topright", col = c("black", "red", "blue"), lty = 1, bty = "n", 
         legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  
  # bottom right
  plot(DateTime, Global_reactive_power, type = "l", ylab = "Global_rective_power", 
       xlab = "datetime", yaxp = c(0.0, 0.5, 5))
})
dev.off()
