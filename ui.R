# This app can be found at https://patrickbarta.shinyapps.io/LeekScore/
shinyUI(pageWithSidebar(
    headerPanel("Decoding Health News: The Leek Score"),
    sidebarPanel(
      sliderInput("prior", 
                    "Prior probability:", 
                    min = 0.001,
                    max = 0.999, 
                    value = .5),
      checkboxInput(inputId = "humans",
                    label = strong("Was this a clinical study in humans?"),
                    value = FALSE),
      checkboxInput(inputId = "outcome",
                    label = strong("Was the outcome directly related to health?"),
                    value = FALSE),
      checkboxInput(inputId = "rct",
                    label = strong("Was this a randomized control trial?"),
                    value = FALSE),
      checkboxInput(inputId = "enough",
                    label = strong("Were there at least hundreds of patients?"),
                    value = FALSE),
      checkboxInput(inputId = "impact",
                    label = strong("Did the treatment have major impact?"),
                    value = FALSE),
      checkboxInput(inputId = "two",
                    label = strong("Do predictions hold up in at least two groups of people?"),
                    value = FALSE)
    ),
    mainPanel(
        tags$h2("Purpose"),
        tags$p("This app implements an ", tags$a(href="http://fivethirtyeight.com/features/a-formula-for-decoding-health-news/",
                                                  target="_blank",
                                                "algorithm proposed by Jeff Leek"), " on the ",                                           tags$a(href="http://fivethirtyeight.com",
                                                  target="_blank",
                                                  "fivethirtyeight.com website"),
                "describing how to use Bayesian reasoning to decide how credible health news is, based on some simple criteria."), 
        tags$h2("Instructions"),
        tags$p("First, find an article with health news that interests you, and read the conclusion.\
               In the slider to the left marked \"Prior Probability\", indicate your prior probability that you believe\
               the conclusion described in the article are true. After reading the article,\
               check the boxes on the left which are true for your article. Under Output, read your posterior probability\
               that the findings in the article are actually true."), 
        tags$h2("Inputs"),
        verbatimTextOutput("prior"),
        verbatimTextOutput("humans"),
        verbatimTextOutput("outcome"),
        verbatimTextOutput("rct"),
        verbatimTextOutput("enough"),
        verbatimTextOutput("impact"),
        verbatimTextOutput("two"),
        tags$h2("Output"),
        verbatimTextOutput("post"),
        tags$h2("Author"),
        tags$p("Patrick Barta, patrickbarta <at> patrickbarta.com")
        
    )
))