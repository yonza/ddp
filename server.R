library(shiny)
shinyServer(
  function(input, output){
    output$MELD <- renderPrint({(0.957 * log(input$creatinine) 
                                + 0.378 * log(input$bilirubin)
                                + 1.120 * log(input$INR) + 0.643 ) * 10 })
  }
  )





