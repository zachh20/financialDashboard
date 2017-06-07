library(shiny)
library(dplyr)
library(jsonlite)


noc <- character()
sb <- integer()
db <- as.Date(character())
acquisitions <- data.frame("Name of Company" = noc, "Date Bought"= db, "Shares Bought" = sb, stringsAsFactors = FALSE)
View(acquisitions)

addAcquisition <- function(newRow) {
  rbind(acquisitions, newRow)
  return(acquisitions)
}

shit.fuck <- function() {
  print("fuck")
}

