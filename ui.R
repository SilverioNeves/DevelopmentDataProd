## Silverio Neves
## Course Project - Developing Data Products
## 8 de Novembro de 2018
## Game Guess Mean
## ui.R

## The user slect the guess mean and the tolerance
## The computer generates randomly 10 numbers between 1 and 100
## The server calculates the mean and compares to guess and tolerance
## The server attributes the user score based on tolerance selected
## The server generates a graphic with the numbers, mean and guess+-tolerance lines


shinyUI(pageWithSidebar(
        headerPanel("Guess Game"),
        sidebarPanel(
                numericInput('mu', 'Select your Guess (1<=mean<=100)',value = 50, min = 1, max = 100, step = 1),
                radioButtons("tol", "Select your tolerance",
                              c("1 = 100 points" = 1,
                                "5 = 60 points" = 5,
                                "10 = 20 points" = 10)),
                hr(),
                tags$b(textOutput("gen1")),
                tags$i(textOutput("gen2"))
        ),
        mainPanel(
                tags$b(textOutput("txt1")),
                tags$b(textOutput("txt2")),
                hr(),
                plotOutput('newplot'),
                hr(),
                tags$b(textOutput("score"))
                
        )
))