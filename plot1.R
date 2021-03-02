## Assignment #Q1:  Have total emissions from PM2.5 decreased in the United  
## States from 1999 to 2008? Using the base plotting system, make a plot showing  
## the total PM2.5 emission from all sources for each of the years 1999, 2002, 
## 2005, and 2008.

findata <- with(NEI, aggregate(Emissions, by = list(year), sum))

png("Plot1.png",width=480,height=480)

plot(findata, type = "o", main = "Total PM2.5 Emissions", xlab = "Year", 
     ylab = "PM2.5 Emissions", pch = 19, col = "red", lty = 6)

dev.off()