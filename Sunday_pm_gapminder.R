# This is a script to explore the gapminder dataset using R
# Naupaka Zimmerman
# naupaka@gmail.com
# April 19th, 2015

# Install dplyr package and dependencies
# install.packages("dplyr", dependencies = TRUE)

# Load dplyr library into working environment
library("dplyr")

# Read in data as tab-delimited
gap.in <- read.table("output/combined_gapMinder.tsv", 
                     sep = "\t", 
                     header = TRUE) 

gap.in %>%
    filter(country == "China" | country == "Niger") %>%
    select(country, year, pop) %>%
    group_by(country,year) %>%
    summarize(min = min(pop)) -> data.out

# Challenge
# Calculate the mean population per continent per year for years prior to but not including 1990

# Add iris data frame to environment
data(iris)
attach(iris)

# Install tidyr package
# install.packages("tidyr", dependencies = TRUE)

# load tidyr package
library("tidyr")

# Turn iris dataset from wide into long format
iris.long <- gather(iris, "Measurement", "Value", 1:4)


