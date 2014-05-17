shinyServer(function(input, output) {
  output$txt1 = renderText({paste("You have selected", input$checkGroup)})
  output$txt2 = renderText({paste("You have selected a range from",input$checkGroup[1])})
  output$plt1 = renderPlot(plot(1:15,rx[,as.numeric(input$checkGroup)]))
  })



