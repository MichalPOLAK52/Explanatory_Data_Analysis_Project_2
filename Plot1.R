> NEI<-readRDS("summarySCC_PM25.rds")
> SCC <- readRDS("Source_Classification_Code.rds")
> agregationByYear<-aggregate(Emissions ~ year,NEI,sum)
> png("plot1.png")
> barplot(
height=agregationByYear$Emissions/10^6, 
names.arg=agregationByYear$year, xlab="years", 
ylab=expression('total PM'[2.5]*' Emissions (10^6 Tons)'),
main=expression('Total PM'[2.5]*' emissions at various years')) 
>dev.off()
