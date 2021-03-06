# This app can be found at https://patrickbarta.shinyapps.io/LeekScore/
shinyUI(pageWithSidebar(
    headerPanel("Decoding Health News: The Leek Score"),
    sidebarPanel(
      sliderInput("prior", 
                    "Prior probability:", 
                    min = 0.,
                    max = 1., 
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
                                                "algorithm proposed by Jeff Leek"), " on the ",
                                          tags$a(href="http://fivethirtyeight.com",
                                                  target="_blank",
                                                  "fivethirtyeight.com website"),
                "describing how to use Bayesian reasoning to decide how credible health news is, based on some simple criteria.",
                "Source code can be found on ",
                    tags$a(href="https://github.com/patrickbarta/LeekScore",
                    target="_blank",
                      "github.")
               ), 
        tags$h2("Instructions"),
        tags$p("First, find a news article with health information that interests you, and read the conclusion.\
               On the slider to the left marked \"Prior Probability\", indicate your prior probability that you believe\
               the conclusion described in the news article is true. After reading the journal article referenced by the news article,\
               check the boxes on the left which are true for the journal article. Under Output, read your posterior probability\
               that the findings in the news article are actually true."), 
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