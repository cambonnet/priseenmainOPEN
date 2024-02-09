#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)

# Define UI for application that draws a histogram
fluidPage(

    # Application title
    titlePanel("Prix des diamants"),

    # selectionner la couleur du diamant
    sidebarLayout(
        sidebarPanel(
            selectInput(inputId = "diamonds$color", label = "Choisissez la couleur du diamant ", selected = 4,
                                                            choices = c("E" = 1, "I" = 2, "J" = 3,"H" = 4)),
    selected = "E",
    multiple = TRUE,
#selectionner la progondeur
         sliderInput(inputId = "diamonds$", label = "selectionner la profondeur", min = 0, max = 80,
                        value = c(55,70), step = 0.5),
          
      
# Show a plot of the generated distribution
        mainPanel()
        )
),
#server
        
output$distPlot <- renderPlot({ 
  ggplot( data = diamonds)+geom_point(mapping = aes(x = cara, y = pric, group=clar, color=clar))
  })
        
    
    


