## Exploratory Data Analysis - Course Project 1
## R-script created 07/03/2015

## Requires that plot1.R to have been executed (this imports the data)

dev.off()

## plot4
png(filename="plot4.png", width=480, height=480)
par(mfcol=c(2,2))

with(power1, plot(Time, Global_active_power ,  type="n", xlab="", ylab="Global Active Power"))
with(power1, lines(Time, Global_active_power ))

with(power1, plot(Time, Sub_metering_1 ,  type="n", xlab="", ylab="Energy sub metering"))
with(power1, lines(Time, Sub_metering_1, col="black" ))
with(power1, lines(Time, Sub_metering_2, col="red" ))
with(power1, lines(Time, Sub_metering_3, col="blue" ))
legend("topright", lty=1, col=c("black", "red", "blue"), bty="n",
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

with(power1, plot(Time, Voltage ,  type="n", xlab="datetime",ylab="Voltage"))
with(power1, lines(Time, Voltage ))

with(power1, plot(Time, Global_reactive_power ,  type="n", xlab="datetime"))
with(power1, lines(Time, Global_reactive_power ))

dev.off()


