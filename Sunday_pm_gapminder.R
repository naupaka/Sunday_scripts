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
    filter(country == "China") %>%
    select(country, year, pop) %>%
    group_by(country) %>%
    summarize(min = min(pop))

# Challenge
# Calculate the mean population per continent per year for years prior to 1990

