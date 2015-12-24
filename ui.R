shinyUI(fluidPage(
      titlePanel("Determinant and Trace Calculator"),
      h3("Document"),
      helpText("This application calculates the determinant,trace,transpose and eigenvalues a matrix. To use this application, first select the action( determinant,trace,transpose or eigenvalue) then select the dimension of the matrix that you want to import. After that your are ready to import your matrix. After importing matrix, press the calculate button. The result will show up under the caclulate button. You can change the entries of your matrix, the dimension or the action you need after each calculation. Don't forget to press the calculate button for each new calculation."),
      sidebarLayout(position = "right",
                   
                    sidebarPanel( 
                          helpText("Select the action and press the button"),
                          actionButton("test","Calculate"),
                          textOutput("text1"),
                          conditionalPanel(condition="input.select==3",tableOutput('tran'))
                          
                          
                          ),
                    mainPanel(
                          selectInput("seldim", label = h4("Choose the matrix dimension"), 
                                      choices = list("2" = 2, "3" = 3,"4"=4,"5"=5), selected = 3),
                          selectInput("select", label = h4("Select Action"), 
                                      choices = list("Determinant" = 1, "Trace" = 2,"Transpose"=3,"Eigenvalues"=5), selected = 1),
                          h4("Set your Matrix"),
                          tableOutput('table')
                          
                          
                          )
      )
))