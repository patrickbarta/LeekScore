posterior <- function(input) {
    # handle special cases
    if (input$prior == 0.) {
      return(0)
    }
    if (input$prior == 1.) {
      return(1.)
    }
    # compute prior odds
    priorOdds = input$prior/(1-input$prior)
    
    # find likelihood ratio
    lrt = 1.
    if (input$humans) {
        lrt = 2 * lrt
    } else {
        lrt = .5 * lrt
    }
    if (input$outcome) {
        lrt = 2 * lrt
    } else {
        lrt = .5 * lrt
    }
    if (input$rct) {
        lrt = 2 * lrt
    } else {
        lrt = .5 * lrt
    }
    if (input$enough) {
        lrt = 2 * lrt
    } else {
        lrt = .5 * lrt
    }
    if (input$impact) {
        lrt = 2 * lrt
    } else {
        lrt = .5 * lrt
    }
    if (input$two) {
        lrt = 2 * lrt
    } else {
        lrt = .5 * lrt
    }
    # Bayes rule
    postOdds = lrt*priorOdds
    postProb = postOdds/(postOdds+1)
    return(round(postProb, digits=5))
}

shinyServer(
    function(input, output) {
        output$prior <- renderText(paste("Your prior probability that study was true: ", input$prior))
        output$humans <- renderText(paste("The study was done in humans: ", input$humans))
        output$outcome <- renderText(paste("The outcome of the study was directly related to human health: ", input$outcome))
        output$rct <- renderText(paste("The study was a randomized control trial: ", input$rct))
        output$enough <- renderText(paste("There were at least hundreds of subjects: ", input$enough))
        output$impact <- renderText(paste("The treatment had substantial impact: ", input$impact))
        output$two <- renderText(paste("More than one group was studied: ", input$two))
        output$post <- renderText(paste("Your posterior probability that the study is true should be: ", posterior(input)))
    }
)
