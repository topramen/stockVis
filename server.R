# server.R

library(quantmod)
source("helpers.R")


shinyServer(function(input, output) {
  
  
  dataInput <- reactive({  
    getSymbols(input$symb, src = "google", 
               from = input$fromDate,
               to = Sys.Date(),
               auto.assign = FALSE)
  })
  
  numStocks <- reactive({ 
     as.numeric(input$amt/coredata(Cl(first(dataInput()))))
   })  
  
  dataOutput <- reactive({ 
    numStocks()*dataInput()
  })
  
#   
#   firstCl <- reactive({
#     Cl(first(dataInput()))
#   })

  
  output$plot <- renderPlot({
    chartSeries(dataOutput(), theme = chartTheme("black"), 
                type = "line", log.scale = TRUE, TA = NULL)
    })
    
    
#   output$text1 <- renderPrint({
#     coredata(lastCl())/coredata(firstCl())*10000
#     })
  
})