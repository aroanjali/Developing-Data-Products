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
  #tabPanel("About",includeMarkdown("about.rmd"))
  tabPanel("About",
           mainPanel(
             h3('Predicting Demand for a given price'),
             h4('This shiny application predicts demand for a given price. User can input the price in the input textbox and press **Submit**. Then the algorithm predicts demand (in units) at the input price.
                '),
             h4('Demand has an inverse relationship with price - so as the price goes up, demand goes down. For price > 200, the product becomes undesirable and demand stays at 0. Price <= 0 is invalid entry, and demand displayed is NA.
                User inputs a price ($100-$200), and the application displays the demand predicted by the alglorithm, along with the price entered by user. 
                '),
             h4(' This was a basic application designed using Slidify to show various features of a Shiny App. It can be enhanced to add more graphs and advanced visualization features such as dynamic filters etc.')
           )
           
           )
 )
 )
 
 
 
 
