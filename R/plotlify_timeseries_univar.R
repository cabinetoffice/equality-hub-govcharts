#' Turn a static univariate time-series chart into an interactive plotly object.
#'
#' @param ggplot_input static ggplot chart with a single timeseries
#'
#' @return An interactive plotly chart.
#' @export
#' 
#' @examples NULL

plotlify_timeseries_univar <- function(ggplot_input) {
  plotly::ggplotly(ggplot_input, tooltip = "text") %>%
    plotly::config(
      displaylogo = FALSE,
      modeBarButtonsToRemove = c("zoom2d", "zoomIn2d", "zoomOut2d", "pan2d",
                                 "select2d", "lasso2d", "autoScale2d", #"resetScale2d",
                                 "hoverClosestCartesian", "hoverCompareCartesian")
    ) %>%
    plotly::layout(
      xaxis = list(
        tickfont = list(
          size = 18.4)),

      yaxis = list(
        tickfont = list(
          size = 18.4))
    ) %>% 
    plotly::style(mode = "markers+lines")
}
