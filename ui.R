#install.packages("shiny")
library("shiny")

shinyUI(pageWithSidebar(
  headerPanel("Demand Prediction - To predict the demand for different price points of a given product"),
  sidebarPanel(
   numericInput('price', 'Price $', 100, min=50, max=200, step =5),
   submitButton('Submit')
  ),
  mainPanel(
    h3('Results of prediction'),
    h4('You entered Price($) of '),
    verbatimTextOutput("inputValue"),
    h4('Which resulted in a prediction of Demand(units) of'),
    verbatimTextOutput("prediction")
  )
))
