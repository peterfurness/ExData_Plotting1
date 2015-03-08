## Exploratory Data Analysis - Course Project 1
## R-script created 07/03/2015

## Requires that plot1.R to have been executed (this imports the data)


## plot2
dev.off()

png(filename="plot2.png", width=480, height=480)
with(power1, plot(Time, Global_active_power ,  type="n", xlab="", ylab="Global Active Power (kilowatts)"))
with(power1, lines(Time, Global_active_power ))
dev.off()

