# Load data from file, filtered 1/2/2007 and 2/22007 data only
file <- "household_power_consumption.txt"
powerconsumption <- read.table(text = grep("^[1,2]/2/2007", readLines(file), value = TRUE), header=T, col.names = strsplit(readLines(file,1),";",fixed = TRUE)[[1]], sep=";", na.strings = "?")
# check dimension of dataframe
dim(powerconsumption)
# List some records out
head(powerconsumption)

# Transforming the Date and Time
powerconsumption$DateTime <- strptime(paste(powerconsumption$Date, powerconsumption$Time), "%d/%m/%Y %H:%M:%S")
powerconsumption$Date <- as.Date(as.character(powerconsumption$Date), "%d/%m/%Y")

# plot 1
png(filename = 'plot1.png', width = 480, height = 480)
hist(powerconsumption$Global_active_power, main = "Global Active Power", ylab = "Frequency", xlab = "Global Active Power (kilowatts)", col = "red", 
     ylim = c(0,1200), xaxp = c(0, 6, 3))
dev.off()