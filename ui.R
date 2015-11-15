library(shiny)
shinyUI(pageWithSidebar(
  headerPanel("Fahrenheit/Celsius two way converter"),
  sidebarPanel(
    radioButtons("id1","Select",
                       c("C to F" = "1",
                         "F to C" = "2")),
    numericInput('id2','Temperature(C/F)',10)
  ),
  mainPanel(
    h3('Documentation'),
    p('You will first select the way you want to convert (from C to F or from F to C), after that you can input the value you want to convert.'),
    h3('Results'),
    h4('You entered'),
    verbatimTextOutput("inputValue"),
    h4('Converted temperature'),
    verbatimTextOutput("outputTemp")
  )
))