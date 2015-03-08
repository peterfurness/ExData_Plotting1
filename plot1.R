## Exploratory Data Analysis - Course Project 1
## R-script created 07/03/2015

## Download the following zip file and unzip
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

fileUrl<- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
zipfile<-"dataset.zip"
download.file(fileUrl, destfile=zipfile)

## Now list out the contents of the zip file without extracting
t<-unzip(zipfile, list=TRUE)
t[,1]

## Now unzip the required file and copy into the working directory
file1<-"household_power_consumption.txt"
unzip(zipfile, file1 ); 

## Read the file into a data frame
power<-read.csv(file1, sep=";", dec=".")

## Convert Date and Time variables and select specific days
power$datetime<-paste(power$Date, power$Time, sep=" " )
power$Date<-as.Date(power$Date,  format="%d/%m/%Y" )

day1<-as.Date("2007-02-01"); day2<-as.Date("2007-02-02")
power1<-subset(power, Date==day1 | Date==day2)
power1$Time<-strptime(power1$datetime, format="%d/%m/%Y %H:%M:%S")

## convert the numerics
power1$Global_active_power<-as.numeric(as.character(power1$Global_active_power))
power1$Global_reactive_power<-as.numeric(as.character(power1$Global_reactive_power))
power1$Voltage<-as.numeric(as.character(power1$Voltage))
power1$Global_intensity<-as.numeric(as.character(power1$Global_intensity))
power1$Sub_metering_1<-as.numeric(as.character(power1$Sub_metering_1))
power1$Sub_metering_2<-as.numeric(as.character(power1$Sub_metering_2))
power1$Sub_metering_3<-as.numeric(as.character(power1$Sub_metering_3))


dev.off()

## plot1
png(filename="plot1.png", width=480, height=480)
hist(power1$Global_active_power, main="Global Active Power", 
     col="red", xlab="Global Active Power (kilowatts)")
dev.off()

