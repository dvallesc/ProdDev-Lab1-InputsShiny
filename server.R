
library(shiny)
library(readr)

shinyServer(function(input, output) {
    output$slider_io <- renderText({
      paste0(c("Output Slider input:", input$`slider_input`),
             collapse="")
    })
    
    output$slider_io_2 <- renderText({
      input$slider_input2
    })
    
    output$select_io <- renderText({
      input$select_input
    })
    
    output$select_io_multi <- renderText({
      input$select_input_2
    })
    
    output$date_io <- renderText({
      paste("", as.character(input$date_input))
    })
    
    output$range_io  <- renderText({
      paste("", 
            paste(
                  as.character(input$date_range),
                  collapse = " to ")
      )
    })    
    output$numeric_io <- renderText({
      input$numeric_input
    })
    
    output$date_io <- renderText({
      paste("", as.character(input$date_input))
    })
    
    output$single_box_io <- renderText({
      input$single_box
    })
    
    output$multiple_box_io <- renderText({
      group_box <- paste(input$group_box, 
                         collapse = ", ")
      paste("", group_box)
    })
    
    output$radio_io <- renderText({
      input$radio_ex
    })
    
    output$text_io <- renderText({
      input$text_input
    })
    
    output$text_area_io <- renderText({
      input$text_area 
    })
    
    output$action_bt_io <- renderText({
      input$action_button
    })
    
    output$action_at_io <- renderText({
      input$action_link
    })
})
