#install.packages("shiny")
#setwd("C:/Users/aarora/Personal/Anjali/Personal/Coursera - Data Science/Course 8 - Developing Data Products/DevelopingDataProducts")
library("shiny")
library(markdown)
# mainPanel(
#   #              includeMarkdown("about.md")
#   #            )




# 
#  shinyUI(
#    pageWithSidebar(
#    headerPanel("Demand Prediction - To predict the demand for different price points of a given product"),
#    sidebarPanel(
#     numericInput('price', 'Price $', 50, min=0, max=200, step =5),
#     submitButton('Submit')
#    ),
#    mainPanel(
#      h3('Results of prediction'),
#      h4('You entered Price($) of '),
#      verbatimTextOutput("inputValue"),
#      h4('Which resulted in a prediction of Demand(units) of'),
#      verbatimTextOutput("prediction")
#    )
#  )
#  )
 
 
 
 
 shinyUI(
   navbarPage("Demand Prediction",
      tabPanel("Application",        
     headerPanel("Demand Prediction - To predict the demand for different price points of a given product"),
     sidebarPanel(
       numericInput('price', 'Price $', 50, min=0, max=200, step =5),
       submitButton('Submit')
     ),
     
     mainPanel(
       # tabsetPanel(
       #   tabPanel("Demand Prediction Application",verbatimTextOutput("inputValue")),
       h3('Results of prediction'),
       h4('You entered Price($) of '),
       verbatimTextOutput("inputValue"),
       h4('Which resulted in a prediction of Demand(units) of'),
       verbatimTextOutput("prediction"))
     
      
    # tabPanel("About", includeMarkdown("about.md") )  
    # )
    # )
     # ,
    #tabPanel("About",includeMarkdown("about.rmd"))
    # )
     
     
     
     
   
  ),
  tabPanel("About",includeMarkdown("about.rmd"))
 )
 )
 
 
 
 
