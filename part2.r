## ----echo=FALSE, message=FALSE, error=FALSE, warning=FALSE, results='hide'----
include <- function(library_name){
  if( !(library_name %in% installed.packages()) )
    install.packages(library_name) 
  library(library_name, character.only=TRUE)
}
include("tidyverse")
include("dplyr")
include("knitr")
include("caret")
library("methods")
purl("Portfolio.Rmd", output = "part1.r")
source("part1.r")


## ----echo=TRUE, message=FALSE, error=FALSE, warning=FALSE, results='hide'-----
Employment <- read_csv("https://raw.githubusercontent.com/introdsci/DataScience-rtresendez/part2/datasets/Employment_2.csv")

Education <- read_csv("https://raw.githubusercontent.com/introdsci/DataScience-rtresendez/part2/datasets/Concentrations.csv")



## -----------------------------------------------------------------------------
#First we will start with the Employment Dataset.
colnames(Employment)[colnames(Employment) ==   "Area Type"] <- "Area_Type"
colnames(Employment)[colnames(Employment) ==   "Area Name"] <- "Area_Name"
colnames(Employment)[colnames(Employment) ==   "Status (Preliminary / Final)"] <- "Status"
colnames(Employment)[colnames(Employment) ==   "Labor Force"] <- "Labor_Force"
colnames(Employment)[colnames(Employment) ==   "Unemployment Rate"] <- "Unemployment_rt"
#We will also remove the 6th column of our data which is wheather the numbers were seasonally adjusted. Since this value is always constant we will remove it.
Employment <- Employment[ -c(6)]
head(summary(Employment))

#Now We will tidy up the Education Dataset
colnames(Education)[colnames(Education) ==   "ID CIP2"] <- "CIP2_ID"
colnames(Education)[colnames(Education) ==   "ID CIP4"] <- "CIP4_ID"
colnames(Education)[colnames(Education) ==   "ID CIP6"] <- "CIP6_ID"
colnames(Education)[colnames(Education) ==   "ID CIP2"] <- "CIP2_ID"
Education <- Education[ -c(7,9,11,13,16,18,19)]
Education <- Education[-c(359),]
head(summary(Education))



## -----------------------------------------------------------------------------

##Make a Graph that shows the growth of labor throughout the years as well as the rate
  P <- ggplot(data=Employment) + geom_point(aes(x=Year, y=Employment,color = Month))
  P2 <- ggplot(data=Employment) + geom_line(aes(x=Year,y=Unemployment_rt))
  P
  P2


## -----------------------------------------------------------------------------

##Make a graph that shows the change in completed degress regardless of CIP

P3 <- ggplot(data=Education) + geom_point(aes(x=Year,y=Completions, color=Year))
P3



## -----------------------------------------------------------------------------
model <- lm(data=Education, formula= Completions~Employment$Labor_Force+Employment$Unemployment+Employment$Unemployment_rt)

prediction <- predict(model)
summary(model)

summary(prediction)



