shinyUI(fluidPage(
  titlePanel("censusVis"),
  sidebarLayout(
    sidebarPanel(
      p("Create sample 2013 plots."),
      checkboxGroupInput("checkGroup", 
                         label = h3("Select Airline"), 
                         choices = list("US", 
                                        "MQ", 
                                        "YV","AS","F9","DL","UA","AA","HA",
                                        "VX","B6","OO","FL","9E","EV","WN"),
                         selected = "US")),
    mainPanel(
      textOutput("txt1"),
      textOutput("txt2"),
      plotOutput("plt1"),
      img(src="bigorb.png",height=100,width=100)
    )
  
  
)))
