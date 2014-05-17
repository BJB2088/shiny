shinyUI(fluidPage(
  titlePanel("censusVis"),
  sidebarLayout(
    sidebarPanel(
      p("Create sample 2013 plots."),
      checkboxGroupInput("checkGroup", 
                         label = h3("Select Airline"), 
                         choices = list("US", 
                                        "MQ", "YV"),
                         selected = "US")),
    mainPanel(
      textOutput("txt1"),
      textOutput("txt2"),
      plotOutput("plt1")
    )
  
  
)))
