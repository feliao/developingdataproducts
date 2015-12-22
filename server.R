fatverdict <- function(height)25*height^2

# Using the common benchmark where anything above 25 in terms of BMI is considered overweight

shinyServer( 
      function(input, output) {
      output$inputValueheight <- renderPrint({input$height})
      output$verdict <- renderPrint({fatverdict(input$height)}) 
      }
)