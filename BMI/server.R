BMI <- function(Weight,Height) Weight/(Height*Height)
shinyServer(
  function(input, output) {
    output$inputValue1 <- renderPrint({input$Weight})
    output$inputValue2 <- renderPrint({input$Height})
    output$prediction <- renderPrint({BMI(input$Weight,input$Height)})
  }
)