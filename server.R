library("shiny")
library(markdown)
# Function to predict Demand based on price. Demand has an inverse relationship with Price
demandPredict <- function(price) {
  ifelse(price<=0,NA,
  ifelse((price>100),0,200 -(2*price))
  )
  }

shinyServer(
  function(input,output){
    output$inputValue <- renderPrint({input$price})
    output$prediction <- renderPrint({demandPredict(input$price)})
  }
  

)
