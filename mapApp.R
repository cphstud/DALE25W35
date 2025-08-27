library(shiny)
library(leaflet)

ui <- fluidPage(
    titlePanel("Interactive Store Locator"),

    sidebarLayout(
        sidebarPanel(
#            selectInput("zoomlevel2",
#                        label = "zoomlevel",
#                        choices = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14),
#                        selected = 14
#            ),
            sliderInput("zoomlevel", "Number of observations:",
                        min = 0, max = 18, value = 18
            )
        ),

        mainPanel(
            leafletOutput("mymap")
        )
    )
)

server <- function(input, output) {

    output$mymap <- renderLeaflet({

        leaflet() %>%
            addTiles() %>%
            addProviderTiles(provider = "Esri.WorldImagery") %>%
            setView(lng=12,lat=55, zoom = input$zoomlevel)
    })
}

shinyApp(ui = ui, server = server)


