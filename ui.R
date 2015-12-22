shinyUI(
      pageWithSidebar(
            # Application title 
            headerPanel("Fat or not!"),
            
            sidebarPanel(
            # Basic documentation
            h3('This web application simply takes your height (must be in metres) calculates a normal weight based on common body mass index benchmark and returns what your normal weight should be (in kilograms)'),
            numericInput('height', 'Your height in metres', 1.75, min = 50, max = 200, step = 1), 
            submitButton('Submit')
            ), 
      
            mainPanel(
            h3('Judgement time!'),
            h4('Your height is'), 
            verbatimTextOutput("inputValueheight"),
            h4('Your weight should be around the below number (in kilograms), anything higher means you are probably overweight!'), 
            verbatimTextOutput("verdict")
            )
      )
)