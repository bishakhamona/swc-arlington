# This is a script to explore the gapminder dataset using R
# Bishakha Mona
# bishakha.mona@gmail.com
# April 19, 2015

#Install dplyr package and dependencies - after done comment th ecommand in next line
# install.packages("dplyr",dependencies = TRUE)

# Load dplyr package into working environment
library("dplyr")

# Read in data as tab-delimited
gap.in <- read.table("output/combined_gapMinder.tsv", 
                     sep = "\t", 
                     header = TRUE)
gap.in %>%
  filter(pop > 15000000) %>%
  select(country, year, pop) %>%
  group_by(country) %>%
  summarize(min = min(pop))

gap.in %>%
  filter(country == "China")

# Challenge - calculate the mean population per continent per year for years prior to 1990

gap.in %>%
  filter(year < 1990) %>%
  select(continent, year, pop) %>%
  group_by(continent,year) %>%
  summarize(mean = mean(pop)) %>% 
  as.data.frame()


mean.pop <- gap.in %>%
  filter(year < 1990) %>%
  select(continent, year, pop) %>%
  group_by(continent,year) %>%
  summarize(mean = mean(pop)) 

mean.pop

attach(iris)
# install.packages("tidyr", dependencies = TRUE)
library("tidyr")

# Turn iris from wide to long format
iris.long <- gather(iris, "measurement", "value",1:4)

