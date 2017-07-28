library(shiny)

shinyUI(fluidPage(
  titlePanel("Stock Trend"),

  sidebarLayout(
    sidebarPanel(
      helpText("Enter stock symbol & date range to lookup trend"),

      textInput("symb", "Symbol", "JPM"),

      dateRangeInput("dates",
        "Date range",
        start = "2017-07-01",
        end = as.character(Sys.Date())),

      br(),
      br(),

      checkboxInput("log", "Plot price on log scale",
        value = FALSE),

      checkboxInput("adjust",
        "Adjust prices for inflation", value = FALSE)
    ),

    mainPanel(plotOutput("plot"))
  )
))
