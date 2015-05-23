library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("MELD Calculator"),
  sidebarPanel(
    p('The MELD score is a predictor of survival in those with liver diseases.
      It is used to prioritize patients on the waiting list for a liver transplant. 
      Enter in the three blood values below to calculate the MELD score.'),
    numericInput('INR','INR',1,min=1, max=20,step=.01),
    numericInput('creatinine','creatinine', 1, min=1,max=20, step=.01),
    numericInput('bilirubin','total bili',1,min=1, max=10, step=.01)
    ),
  mainPanel(
    h3('MELD Score:'),
    verbatimTextOutput("MELD")
    )
  ))
