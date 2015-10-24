library(shiny)
library(ggplot2)
library(MASS)

dataset <- esoph

#shinyUI(pageWithSidebar(
shinyUI(fluidPage(
    headerPanel("Smoking, Alcohol and (O)esophageal Cancer"),
    
    sidebarPanel(
        
        selectInput('x', 'X Axis', names(dataset[,1:3])),
        selectInput('y', 'Y Axis', names(dataset[,4:5]), names(dataset[,4:5])),
        selectInput('color', 'Color', c('None', names(dataset))),
        selectInput('facet_row', 'Facet Row', c(None='.', names(dataset))),
        selectInput('facet_col', 'Facet Column', c(None='.', names(dataset)))
    ),
    
    helpText("Note: The variables used in this application is based on the Esoph data package and a full decription can be found in the R Datasets Package.
             The application is only to be used to explore the data."),
    
    mainPanel(
        plotOutput('plot')
        
        
    )
))


