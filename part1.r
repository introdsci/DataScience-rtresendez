## -----------------------------------------------------------------------------

suppressMessages(library(tidyverse))
suppressMessages(library(dplyr))
suppressMessages((library(tidyr)))
suppressMessages(library(naniar))

unTidyPopulationDF <- read.csv(
  "https://raw.githubusercontent.com/introdsci/DataScience-rtresendez/master/datasets/PopulationEstimates.csv")

unTidyEducationDF <- read.csv(
  "https://raw.githubusercontent.com/introdsci/DataScience-rtresendez/master/datasets/Education.csv")

unTidyUnemploymentDF <- read.csv(
  "https://raw.githubusercontent.com/introdsci/DataScience-rtresendez/master/datasets/Unemployment.csv")
 


## -----------------------------------------------------------------------------

colnames(unTidyEducationDF)[colnames(unTidyEducationDF) == "Educational.attainment.for.adults.age.25.and.older.for.the.U.S...States..and.counties..1970.2017"] <- "FIPS_Code"

colnames(unTidyEducationDF)[colnames(unTidyEducationDF) == "X"] <- "State"

colnames(unTidyEducationDF)[colnames(unTidyEducationDF) == "X.1"] <- "County"

colnames(unTidyEducationDF)[colnames(unTidyEducationDF) == "X.4"] <- "RUCC"

colnames(unTidyEducationDF)[colnames(unTidyEducationDF) == "X.5"] <- "UCC"

colnames(unTidyEducationDF)[colnames(unTidyEducationDF) == "X.38"] <- "LessHSD"

colnames(unTidyEducationDF)[colnames(unTidyEducationDF) == "X.39"] <- "HSDOnly"

colnames(unTidyEducationDF)[colnames(unTidyEducationDF) == "X.40"] <- "AADeg"

colnames(unTidyEducationDF)[colnames(unTidyEducationDF) == "X.41"] <- "BD"



## -----------------------------------------------------------------------------

colnames(unTidyPopulationDF)[colnames(unTidyPopulationDF) == "Population.estimates.for.the.U.S...States..and.counties..2010.18..see.the.second.tab.in.this.workbook.for.variable.name.descriptions."] <- "FIPS"

colnames(unTidyPopulationDF)[colnames(unTidyPopulationDF) == "X"] <- "State"

colnames(unTidyPopulationDF)[colnames(unTidyPopulationDF) == "X.1"] <- "County"

colnames(unTidyPopulationDF)[colnames(unTidyPopulationDF) == "X.3"] <- "URCC"

colnames(unTidyPopulationDF)[colnames(unTidyPopulationDF) == "X.5"] <- "UCC"

colnames(unTidyPopulationDF)[colnames(unTidyPopulationDF) == "X.12"] <- "PopEst13"

colnames(unTidyPopulationDF)[colnames(unTidyPopulationDF) == "X.13"] <- "PopEst14"

colnames(unTidyPopulationDF)[colnames(unTidyPopulationDF) == "X.14"] <- "PopEst15"

colnames(unTidyPopulationDF)[colnames(unTidyPopulationDF) == "X.15"] <- "PopEst16"

colnames(unTidyPopulationDF)[colnames(unTidyPopulationDF) == "X.16"] <- "PopEst17"

colnames(unTidyPopulationDF)[colnames(unTidyPopulationDF) == "X.30"] <- "Births13"

colnames(unTidyPopulationDF)[colnames(unTidyPopulationDF) == "X.31"] <- "Births14"

colnames(unTidyPopulationDF)[colnames(unTidyPopulationDF) == "X.32"] <- "Births15"

colnames(unTidyPopulationDF)[colnames(unTidyPopulationDF) == "X.33"] <- "Births16"

colnames(unTidyPopulationDF)[colnames(unTidyPopulationDF) == "X.34"] <- "Births17"

colnames(unTidyPopulationDF)[colnames(unTidyPopulationDF) == "X.39"] <- "Deaths13"

colnames(unTidyPopulationDF)[colnames(unTidyPopulationDF) == "X.40"] <- "Deaths14"

colnames(unTidyPopulationDF)[colnames(unTidyPopulationDF) == "X.41"] <- "Deaths15"

colnames(unTidyPopulationDF)[colnames(unTidyPopulationDF) == "X.42"] <- "Deaths16"

colnames(unTidyPopulationDF)[colnames(unTidyPopulationDF) == "X.43"] <- "Deaths17"



## -----------------------------------------------------------------------------
colnames(unTidyUnemploymentDF)[colnames(unTidyUnemploymentDF) == "Unemployment.and.median.household.income.for.the.U.S...States..and.counties..2007.18"] <- "FIPS"

colnames(unTidyUnemploymentDF)[colnames(unTidyUnemploymentDF) == "X"] <- "State"

colnames(unTidyUnemploymentDF)[colnames(unTidyUnemploymentDF) == "X.1"] <- "County"

colnames(unTidyUnemploymentDF)[colnames(unTidyUnemploymentDF) == "X.2"] <- "URCC"

colnames(unTidyUnemploymentDF)[colnames(unTidyUnemploymentDF) == "X.3"] <- "UCC"

colnames(unTidyUnemploymentDF)[colnames(unTidyUnemploymentDF) == "X.4"] <- "Metro_Status"

colnames(unTidyUnemploymentDF)[colnames(unTidyUnemploymentDF) == "X.29"] <- "Labor_Force13"

colnames(unTidyUnemploymentDF)[colnames(unTidyUnemploymentDF) == "X.30"] <- "Employed13"

colnames(unTidyUnemploymentDF)[colnames(unTidyUnemploymentDF) == "X.31"] <- "Unemployed13"

colnames(unTidyUnemploymentDF)[colnames(unTidyUnemploymentDF) == "X.32"] <- "UnempRt13"

colnames(unTidyUnemploymentDF)[colnames(unTidyUnemploymentDF) == "X.33"] <- "Labor_Force14"

colnames(unTidyUnemploymentDF)[colnames(unTidyUnemploymentDF) == "X.34"] <- "Employed14"

colnames(unTidyUnemploymentDF)[colnames(unTidyUnemploymentDF) == "X.35"] <- "Unemployed14"

colnames(unTidyUnemploymentDF)[colnames(unTidyUnemploymentDF) == "X.36"] <- "UnempRt14"

colnames(unTidyUnemploymentDF)[colnames(unTidyUnemploymentDF) == "X.37"] <- "Labor_Force15"

colnames(unTidyUnemploymentDF)[colnames(unTidyUnemploymentDF) == "X.38"] <- "Employed15"

colnames(unTidyUnemploymentDF)[colnames(unTidyUnemploymentDF) == "X.39"] <- "Unemployed15"

colnames(unTidyUnemploymentDF)[colnames(unTidyUnemploymentDF) == "X.40"] <- "UnempRt15"

colnames(unTidyUnemploymentDF)[colnames(unTidyUnemploymentDF) == "X.41"] <- "Labor_Force16"

colnames(unTidyUnemploymentDF)[colnames(unTidyUnemploymentDF) == "X.42"] <- "Employed16"

colnames(unTidyUnemploymentDF)[colnames(unTidyUnemploymentDF) == "X.43"] <- "Unemployed16"

colnames(unTidyUnemploymentDF)[colnames(unTidyUnemploymentDF) == "X.44"] <- "UnempRt16"

colnames(unTidyUnemploymentDF)[colnames(unTidyUnemploymentDF) == "X.45"] <- "Labor_Force17"

colnames(unTidyUnemploymentDF)[colnames(unTidyUnemploymentDF) == "X.46"] <- "Employed17"

colnames(unTidyUnemploymentDF)[colnames(unTidyUnemploymentDF) == "X.47"] <- "Unemployed17"

colnames(unTidyUnemploymentDF)[colnames(unTidyUnemploymentDF) == "X.48"] <- "UnempRt17"



## -----------------------------------------------------------------------------

Education <- tibble(FIPS = unTidyEducationDF$FIPS_Code,
                    State = unTidyEducationDF$State,
                    County = unTidyEducationDF$County,
                    RUCC = unTidyEducationDF$RUCC,
                    UCC = unTidyEducationDF$UCC,
                    LessHSD = unTidyEducationDF$LessHSD,
                    HSDOnly = unTidyEducationDF$HSDOnly,
                    AADeg = unTidyEducationDF$AADeg,
                    BD = unTidyEducationDF$BD)

Education <- Education[-c(1:4),]

Population <- tibble(FIPS = unTidyPopulationDF$FIPS,
                     State = unTidyPopulationDF$State,
                     County = unTidyPopulationDF$County,
                     RUCC = unTidyPopulationDF$URCC,
                     UCC = unTidyPopulationDF$UCC,
                     PopEst13 = unTidyPopulationDF$PopEst13,
                     PopEst14 = unTidyPopulationDF$PopEst14,
                     PopEst15 = unTidyPopulationDF$PopEst15,
                     PopEst16 = unTidyPopulationDF$PopEst16,
                     PopEst17 = unTidyPopulationDF$PopEst17,
                     Births13 = unTidyPopulationDF$Births13,
                     Births14 = unTidyPopulationDF$Births14,
                     Births15 = unTidyPopulationDF$Births15,
                     Births16 = unTidyPopulationDF$Births16,
                     Births17 = unTidyPopulationDF$Births17,
                     Deaths13 = unTidyPopulationDF$Deaths13,
                     Deaths14 = unTidyPopulationDF$Deaths14,
                     Deaths15 = unTidyPopulationDF$Deaths15,
                     Deaths16 = unTidyPopulationDF$Deaths16,
                     Deaths17 = unTidyPopulationDF$Deaths17)

Population <- Population[-c(1:2),]

Employment <- tibble(FIPS = unTidyUnemploymentDF$FIPS,
                     State = unTidyUnemploymentDF$State,
                     County = unTidyUnemploymentDF$County,
                     RUCC = unTidyUnemploymentDF$URCC,
                     UCC = unTidyUnemploymentDF$UCC,
                     Metro_Status = unTidyUnemploymentDF$Metro_Status,
                     Labor_Force13 = unTidyUnemploymentDF$Labor_Force13,
                     Labor_Force14 = unTidyUnemploymentDF$Labor_Force14,
                     Labor_Force15 = unTidyUnemploymentDF$Labor_Force15,
                     Labor_Force16 = unTidyUnemploymentDF$Labor_Force16,
                     Labor_Force17 = unTidyUnemploymentDF$Labor_Force17,
                     Employed13 = unTidyUnemploymentDF$Employed13,
                     Employed14 = unTidyUnemploymentDF$Employed14,
                     Employed15 = unTidyUnemploymentDF$Employed15,
                     Employed16 = unTidyUnemploymentDF$Employed16,
                     Employed17 = unTidyUnemploymentDF$Employed17,
                     Unemployed13 = unTidyUnemploymentDF$Unemployed13,
                     Unemployed14 = unTidyUnemploymentDF$Unemployed14,
                     Unemployed15 = unTidyUnemploymentDF$Unemployed15,
                     Unemployed16 = unTidyUnemploymentDF$Unemployed16,
                     Unemployed17 = unTidyUnemploymentDF$Unemployed17,
                     UmpRt13 = unTidyUnemploymentDF$UnempRt13,
                     UmpRt14 = unTidyUnemploymentDF$UnempRt14,
                     UmpRt15 = unTidyUnemploymentDF$UnempRt15,
                     UmpRt16 = unTidyUnemploymentDF$UnempRt16,
                     UmpRt17 = unTidyUnemploymentDF$UnempRt17)

Employment <- Employment[-c(1:7),]

show(Employment)
show(Education)
show(Population)
                     



## -----------------------------------------------------------------------------
Population$RUCC <- sub("^$", "0", Population$RUCC)
Population$UCC <- sub("^$", "0", Population$UCC)

Employment$RUCC <- sub("^$", "0", Employment$RUCC)
Employment$UCC <- sub("^$", "0", Employment$UCC)
Employment$Metro_Status <- sub("^$", "NA", Employment$Metro_Status)

Education$RUCC <- sub("^$", "0", Education$RUCC)
Education$UCC <- sub("^$", "0", Education$UCC)

