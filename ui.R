shinyUI(fluidPage(
  titlePanel("censusVis"),
  sidebarLayout(
    sidebarPanel(
      p("Create demographic maps with information from the 2010 US Census."),
      selectInput("select", label = strong("Choose a variable to display"), 
                  choices = list("Percent White" = 1, "Choice 2" = 2,
                                 "Choice 3" = 3), selected = 1),
      checkboxGroupInput("checkGroup", 
                         label = h3("Checkbox group"), 
                         choices = list("Choice 1" = 1, 
                                        "Choice 2" = 2, "Choice 3" = 3),
                         selected = 1)),
    mainPanel(
      textOutput("txt1"),
      textOutput("txt2"),
      plotOutput("plt1")
    )
  
  
)))
