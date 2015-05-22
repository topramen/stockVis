library(shiny)

shinyUI(fluidPage(
  titlePanel("Buy and Hold"),
  
  sidebarLayout(
    sidebarPanel(

      helpText("'Buy and Hold' is a popular strategy of building wealth through stocks."),
      
      helpText("This app tells you how much wealth you would have built, if you had followed that strategy"),

      br(),
      helpText("If you had bought"),
      
      numericInput("amt", "$", value=1000),
      
      textInput("symb", "worth of stock", "AAPL"),
      
      dateInput("fromDate", 
                     "on",
                     value = "2013-01-01"
                     ),
      
      br(),
      helpText("The chart on the right shows how your wealth would have grown"),

      br(),
      helpText("PS: The stock prices are picked up from Google"),
      
      
      br(),
      br()

      ),
    
    mainPanel(plotOutput("plot")
#               , 
#              textOutput ("text1")
              )
  )
))