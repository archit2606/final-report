suppressWarnings(library(shiny))
suppressWarnings(library(markdown))
shinyUI(fluidPage(
        titlePanel("Data Science Capstone: Text Prediction"),

                    sidebarLayout(
                        sidebarPanel(
                            helpText("Enter a partially complete sentence to begin the next word prediction"),
                            textInput("inputString", "Enter a partial sentence here",value = ""),
                            br(),
                            br(),
                            br(),
                            br()
                                ),
                        mainPanel(
                            h2("Prediction for the Next Word"),
                            verbatimTextOutput("prediction"),
                            strong("Sentence Input:"),
                            tags$style(type='text/css', '#text1 {background-color: rgba(255,255,255,0.40); color: black;}'), 
                            textOutput('text1'),
                            br(),
                            strong("Dataset used:"),
                            tags$style(type='text/css', '#text2 {background-color: rgba(255,255,255,0.40); color: black;}'),
                            textOutput('text2')
                      )
                )
                            
                
)
)