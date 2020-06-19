

ui <- fluidPage(
  
  titlePanel(h1("Optimisation of carriage capacity",align="centre")),
  
  headerPanel(uiOutput("tab",style = "font-size:15px;")),
  
  fluidRow(
    column(3,   wellPanel(  radioButtons(
      "inputSelect",
      label = ("Choose shield patterning:"),
      choices = c(
        "Standard shield patterning" = 1,
        "Zig-Zag shield patterning" = 0
      ),
      selected = 1) ) ),
  
    
    conditionalPanel(condition = "input.inputSelect == 1",
                     column(3,      wellPanel(sliderInput("NumberofShields", h4("Number of shields", align = "center"),
                                                min = 1, max = 36, value = 10,width='100%'))),
                     column(3,       wellPanel(sliderInput("ShieldLength", h4("Length of shield", align = "center"),
                                                min = 0, max = 1.16, value =1.16,width='100%'))),
                     
                     column(3,      wellPanel(sliderInput("SocialDistance", h4("Social distancing rule (m)", align = "center"),
                                                min = 1, max = 2, value = 2,width='100%')))
                     
                     
    ),
    
    conditionalPanel(condition = "input.inputSelect == 0",
                     wellPanel(column(3,      sliderInput("NumberofShields1", h4("Number of shields", align = "center"),
                                                min = 1, max = 18, value = 10,width='100%')),
                     column(3,      sliderInput("ShieldLength1", h4("Length of shield", align = "center"),
                                                min = 0, max = 1.16, value =1.16,width='100%')),
                     
                     column(3,      sliderInput("SocialDistance1", h4("Social distancing rule (m)", align = "center"),
                                                min = 1, max = 2, value = 2,width='100%')))
                     
    )
  ),

  
 # fluidRow(
#    column(12, textOutput("capacity"))
#  ),  
  
  fluidRow(
    column(7,
           headerPanel(""),
           headerPanel(""),
           plotOutput("subplots", width = "100%", height = "600px"))
    ,
    
    column(5,
           plotOutput("trainemissions"),
           img(src="train_floorplan.png",width="600", height="150",align="centre")
          )
           
  )
  
#  fluidRow(
#    column(8, h1("ediuhe")),
#    column(4,textOutput("emissionstext")       )
#  ),
  
 # fluidRow(
  #  column(4),
   # column(4,      h1("Train plan", align = "center"),
    #       img(src="train_floorplan.png",width="600", height="150")
    #)
#  )
    
)
