# server.R

options("getSymbols.warning4.0" = FALSE)

library(quantmod)
if (!exists(".inflation")) {
    .inflation <- getSymbols('CPIAUCNS', src = 'FRED',
                             auto.assign = FALSE)
}
adjust <- function(data) {
    latestcpi <- last(.inflation)[[1]]
    inf.latest <- time(last(.inflation))
    months <- split(data)
    adjust_month <- function(month) {
        date <- substr(min(time(month[1]), inf.latest), 1, 7)
        coredata(month) * latestcpi / .inflation[date][[1]]
    }
    adjs <- lapply(months, adjust_month)
    adj <- do.call("rbind", adjs)
    axts <- xts(adj, order.by = time(data))
    axts[, 5] <- Vo(data)
    axts
}
shinyServer(function(input, output) {
    output$plot <- renderPlot({
        data <- getSymbols(
            input$symb,
            src = "google",
            from = input$dates[1],
            to = input$dates[2],
            auto.assign = FALSE
        )
        chartSeries(
            data,
            theme = chartTheme("white"),
            type = "auto",
            log.scale = input$log,
            TA = NULL,
            name = input$symb,
            show.grid = TRUE,
            multi.col = TRUE
        )
        candleChart(
            data,
            name = input$symb,
            multi.col = TRUE,
            theme = "white"
        )

    })
})
