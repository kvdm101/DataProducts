library(shiny)
library(MASS)
library(ggplot2) 
shinyServer(function(input, output) {
  
    dataset <- reactive({
        esoph
      
    })
    
    y <- reactive({as.data.frame(esoph)})

    output$plot <- renderPlot({
        
        p <- ggplot(dataset(), aes_string(x=input$x, y=input$y)) + geom_point()
        

        facets <- paste(input$facet_row, '~', input$facet_col)
        if (facets != '. ~ .')
            p <- p + facet_grid(facets)
        

        print(p)
        
    }, height=700)
    
    output$perc <- renderText({
        input$perc
    })

    check <- reactive({
     
        if (input$perc == 'Yes')
           y$percent <- round(y$ncases / y$ncontrols * 100)
        else
           y
        
  })
    
    output$table <- renderTable({
        y()
        })
    
})