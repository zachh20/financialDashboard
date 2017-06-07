#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#
library(plotly)
library(shiny)
library(httr)
library(jsonlite)
library(ggplot2)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Old Faithful Geyser Data"),
  
  # Sidebar with a slider input for number of bins 

    sidebarPanel(
        
        # Copy the line below to make a text input box
        textInput("text", label = h3("Text input"), value = "Enter text..."),
        
        hr(),
        fluidRow(column(3, verbatimTextOutput("value"))),
        
        # Copy the line below to make a date selector 
        dateInput("date", label = h3("Date input"), value = "2014-01-01"),
        
        hr(),
        fluidRow(column(3, verbatimTextOutput("value"))),
        
        # Copy the line below to make a number input box into the UI.
        numericInput("num", label = h3("Amount Bought"), value = 1),
        
        hr(),
        fluidRow(column(3, verbatimTextOutput("value"))),  
        
        # Copy the line below to make an action button
        actionButton("add", label = "Add Acquisition"),
        
        hr(),
        fluidRow(column(2, verbatimTextOutput("value")))
        
    ),
    
    # Show a plot of the generated distribution
  mainPanel(
    plotlyOutput("table")
  )
  )
)
