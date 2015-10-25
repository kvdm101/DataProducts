library(shiny)
library(ggplot2)
library(MASS)
require(markdown)
dataset <- esoph

#shinyUI(pageWithSidebar(
shinyUI(fluidPage(
    titlePanel(""),
        headerPanel("Smoking, Alcohol and (O)esophageal Cancer"),
        
        sidebarPanel(
            
            selectInput('x', 'X Axis', names(dataset[,1:3])),
            selectInput('y', 'Y Axis', names(dataset[,4:5]), names(dataset[,4:5])),
            selectInput('facet_row', 'Facet Row', c(None='.', names(dataset))),
            selectInput('facet_col', 'Facet Column', c(None='.', names(dataset))),
            selectInput('perc', 'Add % to dataset?', c("Yes", "No"), "Yes"),
            submitButton('Submit')
            ),
        
        mainPanel(
            tabsetPanel(type = "tabs", 
                  tabPanel("Plot", plotOutput("plot")), 
                  tabPanel("DataSet", tableOutput("table")),
                  tabPanel("Documentation",includeMarkdown("DataProductsSlide.Rpres")
        )
        ))
))


