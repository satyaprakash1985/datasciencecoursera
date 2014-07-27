
library("shiny")
shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("BMI calculator"),
    sidebarPanel(
      numericInput('Weight', 'Weight in Kg', 75, step = 1),
      numericInput('Height', 'Height in meters', 1.7, step = 0.1),
      submitButton('Submit')
    ),
    mainPanel(
      h3('BMI calculation'),
      h4('Weight in Kg'),
      verbatimTextOutput("inputValue1"),
      h4('Height in meters'),
      verbatimTextOutput("inputValue2"),
      h4('Calculated BMI '),
      verbatimTextOutput("prediction")
    )
  )
)