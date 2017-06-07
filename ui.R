#Require shiny
library(shiny)

#Here you will define the functionality of your user interface
shinyUI(fluidPage(
  
  # Add a descriptive application title
  titlePanel("Women's Role in Society"),
  
  # Here you will add the interactivity to your app
  # Create a selectInput where the user can select either Men, Women, or Both. 
  # Create a selectInput where the user can select if they Agree or Disagree.
  
  # Look at the Shiny documentation for selectInput and sliderInput syntax
  # inputIDs's have been provided
  sidebarLayout(
    sidebarPanel(
      #selectInput for Men, Women, or Both
      #inputID = sex
      selectInput(inputId = "sex",
                  label = "Sex:",
                  choices = c("Men", "Women", "Both"),
                  selected = "Both"),
      
      #selectInput for Agree or Disagree
      #inputID = thoughts
      selectInput(inputId = "thoughts",
                  label = "Who:",
                  choices = c("Agree", "Disagree"),
                  selected= "Agree"),
      
      textInput("text", label = h3("Text input"), value = "Enter text..."),
      
      hr(),
      fluidRow(column(3, verbatimTextOutput("hi"))),
      
      # Copy the line below to make a date selector 
      dateInput("date", label = h3("Date input"), value = "2014-01-01"),
      
      hr(),
      fluidRow(column(3, verbatimTextOutput("yo"))),
      
      # Copy the line below to make a number input box into the UI.
      numericInput("num", label = h3("Amount Bought"), value = 1),
      
      hr(),
      fluidRow(column(3, verbatimTextOutput("sup"))),  
      
      # Copy the line below to make an action button
      actionButton("add", label = "Add Acquisition"),
      
      hr(),
      fluidRow(column(2, verbatimTextOutput("dog")))
      
      
      
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      #give your plot a descriptive name
      plotOutput("plot")
    )
  )
))