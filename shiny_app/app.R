library(shiny)

ui <- fluidPage(
  titlePanel("GitHub Codespaces Shiny App"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("obs", "Number of observations:", 1, 100, 50)
    ),
    mainPanel(
      plotOutput("distPlot")
    )
  )
)

server <- function(input, output) {
  output$distPlot <- renderPlot({
    hist(rnorm(input$obs), col = 'skyblue', border = 'white')
  })
}

shinyApp(ui = ui, server = server)

