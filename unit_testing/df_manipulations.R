#install.packages("stringr")
#install.packages("lapply")
library(stringr)

# converts a string to snake case
string.to.snake <- function(s)
{
  newstr <- str_replace_all(s, "\\.", "_")
  tolower(newstr)
}

columns.to.snake.case <- function(column.names)
{
  string.to.snake(column.names)
}