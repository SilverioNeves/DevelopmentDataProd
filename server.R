## Silverio Neves
## Course Project - Developing Data Products
## 8 de Novembro de 2018
## Game Guess Mean
## server.R

## library(UsingR)
## data(galton)
shinyServer(
        function(input, output) {
                output$newplot <- renderPlot({
                        rdf <- data.frame(x=1:10, y = sample(1:100,10))
                        m <- mean(df$y)
                        mu <- as.numeric(input$mu)
                        tol <- as.numeric(input$tol)
                        plot(x = rdf$x, y=rdf$y, col = "darkgreen", pch = 12,
                             xlab = "10 numbers genereated by computer",
                             ylab = "Numbers value 1-100")
                        abline(h = m, col = "darkblue", lty = 1)
                        abline(h = (mu+tol), col ="red", lty=3)
                        abline(h = (mu-tol), col ="red", lty=3)
                        abline(h = mu, col ="red", lty=2)
                        output$txt1 <- renderText(paste("Your Guess was mean =",mu," and tolerance =",tol,sep=" "))
                        output$gen1 <- renderText("Numbers generated randomly by computer:")
                        output$gen2 <- renderText(rdf$y)
                        if (m >= (mu-tol) & m<= (mu+tol)){
                                if (tol == 1) s <- 100 else{
                                        if(tol == 5) s <- 60 else s<- 20
                                }
                                
                        } else s <- 0
                        output$score <- renderText(paste("Your Score is", s,sp=" "))
                })
        }
)