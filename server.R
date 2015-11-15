library(shiny)
shinyServer(
  function(input,output) {
    output$inputValue = renderPrint(input$id2)
    observe( {
      x <- input$id1
      if(x == "1")
      {
        output$outputTemp = renderPrint(input$id2*9/5+32)
      }
      else if(x == "2")
      {
        output$outputTemp = renderPrint((input$id2-32)*5/9)
      }
      else
      {
        output$output = renderPrint("Please select checkbox")
      }
      })
  }
)