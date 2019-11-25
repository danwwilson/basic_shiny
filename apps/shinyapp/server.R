library(shiny)

# Define server logic required to draw a histogram
server <- function(input, output) {
  
  output$distPlot <- renderPlot({
    # generate bins based on input$bins from ui.R
    x    <- faithful[, 2]
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(x, breaks = bins, col = 'darkgray', border = 'white')
  })
  
  output$user <- renderText({
    paste("Welcome", Sys.getenv(c("SHINYPROXY_USERNAME")))
  })
  
  output$vars <- renderTable({
    df <- Sys.getenv()
    data.frame(field = names(df), values = as.vector(df))
  })
}

