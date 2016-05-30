library("shiny")

# Function to predict Demand based on price. Demand has an inverse relationship with Price
demandPredict <- function(price) 2000/price

shinyServer(
  function(input,output){
    output$inputValue <- renderPrint({input$price})
    output$prediction <- renderPrint({demandPredict(input$price)})
  }
)
