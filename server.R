library(dplyr)
library(shiny)
library(plotly)
library(httr)
library(ggplot2)

source("ScriptsForFinance.R")


shinyServer(
  
  function(input, output) {
  shit.fuck()
  newRow <- eventReactive(input$add, {c(input$text, input$date, input$num)})  
  shit.fuck()
  #nameOfCompany <- eventReactive(input$add, {input$text})
  #dateBought <- eventReactive(input$add, {input$date})
  #shares <- eventReactive(input$add, {input$num})
  
  #newRow <- eventReactive(input$add, {c(nameOfCompany(), dateBought(), shares())})
  
  #acquisitions <- eventReactive(input$add, {rbind(acquisitions, newRow())})
  # You can access the value of the widget with input$date, e.g.
  #output$value <- renderPrint({ input$date })
    
  # You can access the value of the widget with input$num, e.g.
  #output$value <- renderPrint({ input$num })  
  
  # You can access the value of the widget with input$text, e.g.
  #output$value <- renderPrint({ input$text }) 
  
  # You can access the value of the widget with input$action, e.g.
  #output$value <- renderPrint({ input$action })
  
  output$table <- renderPlotly({
    #acquisitons <- addAcquisition(newRow)
    #acquisitons
    shit.fuck()
    set.seed(100)
    d <- diamonds[sample(nrow(diamonds), 1000), ]
    p <- plot_ly(d, x = ~carat, y = ~price, color = ~carat,
            size = ~carat, text = ~paste("Clarity: ", clarity))
    
    
    
    }
    
  )
  
  
})
