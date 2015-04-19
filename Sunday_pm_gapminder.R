# This is a script to explore the gapminder dataset using R
# Bishakha Mona
# bishakha.mona@gmail.com
# April 19, 2015

# Read in data as tab-delimited
gap.in <- read.table("output/combined_gapMinder.tsv", sep = "\t", header = TRUE)

# print first 10 rows of gap.in
for(number in 1:10){
  print(gap.in[number,])
}

# nest for loops
for(row.number in 1:10){
  for (col.number in 1:5){
    print(gap.in[row.number,col.number])
  }
}

gap.in[1:10,1:5]

# create a function in R to add - set of code that does one thing
add.me <- function(x,y){
  x + y
}

# use the above add function
add.me(3,4)
