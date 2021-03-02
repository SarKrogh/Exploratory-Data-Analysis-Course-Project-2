## Assignment #Q3: Of the four types of sources indicated by the type (point, 
## nonpoint, onroad, nonroad) variable, which of these four sources have seen 
## decreases in emissions from 1999-2008 for Baltimore City? Which have seen 
## increases in emissions from 1999-2008? Use the ggplot2 plotting system to 
## make a plot answer this question.

library(ggplot2)

baltimoreNEI <- NEI[NEI$fips=="24510",]

png("plot3.png",width=480,height=480)

ggp <- ggplot(baltimoreNEI,aes(factor(year),Emissions,fill=type)) +
  geom_bar(stat="identity") +
  theme_bw() + guides(fill=FALSE)+
  facet_grid(.~type,scales = "free",space="free") + 
  labs(x="year", y=expression("Total PM2.5 Emissions (Tons)")) + 
  labs(title=expression("PM2.5 Emissions, Baltimore City 1999-2008 by Source Type"))

print(ggp)
dev.off()