# Cloman, Chandler
rm(list = ls())
library(tidyverse)

countriesData <- read.csv("datasets/countries.csv", stringsAsFactors = TRUE)
summary(countriesData)
# There are 147 missing values
# There are 44 from Asia
# measles_immunization_oneyearolds is a numerical value the discrete.
# The fines_for_tobacco_advertising_2014 is categorical and not ordinal

ggplot(countriesData, aes(x=measles_immunization_oneyearolds, y=continent)) +
  geom_boxplot()
# North American is the most symmetrical. The median having an equal amount of
# values in Q1 and Q2. Also the whiskers are about the same length on each side

ggplot(countriesData, aes(x=ecological_footprint_2000)) +
  geom_histogram()

# This histogram is right skewed
# There is a outliers in the range 10-16 with a count of 1, also these values
# are a low % of the data which shows high outliers meaning the graph is
# right skewed while ranges like 0 to 2 has 48% of the data
