library(shiny)
library(bootstraplib)

bs_theme_new("4+3")
bs_theme_base_colors(bg = "#FBFBFB", fg = "#494845")
bs_theme_accent_colors(primary = "#CAD1D2", secondary = "#646A6F")
bs_theme_add_variables(`enable-rounded` = FALSE, `font-family-base` = "-apple-system", 
                       `headings-font-family` = "sans-serif", `enable-gradients` = TRUE)


ui <- fluidPage(
  bootstrap(),
  tags$br(),
  h4("NPD Program Change Request Form"),
  tags$br(),
  tags$br(),
  absolutePanel(
    
    top = 50, height = 500, left = 10, width = 1300,
    
    wellPanel(
      input_prg_UI("pg"),
      input_btn_UI("pg")
    )
    ),
  
  absolutePanel(
    top = 800, height = 500, left = 10, width = 1300,
    
    wellPanel(
      input_table_UI("pg")
    )
  )
  )

server <- function(input, output, session){
  
  callModule(program_function_1, "pg")
}

shinyApp(ui, server)
