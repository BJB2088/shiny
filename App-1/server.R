library(ggplot2)
shinyServer(function(input, output) {
  #sel <- reactive(quote({input$checkGroup}),quoted=TRUE)
  dat=reactive({subset(get2013dat,uniquecarrier %in% input$checkGroup)})
  output$txt1 = renderText({paste(input$checkGroup)})
  output$plt1 = renderPlot(print(qplot(as.factor(month),sampleavg,ylim=c(0,30),geom="line",group=uniquecarrier,color=uniquecarrier,data=dat())))
  })



