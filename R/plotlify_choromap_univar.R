#' Turn a static univariate choropleth map into an interactive plotly object.
#'
#' @param ggplot_input static ggplot chart with a univariate choropleth map
#'
#' @return An interactive plotly chart.
#' @export
#'
#' @examples NULL
plotlify_choromap_univar <- function(ggplot_input) {
  plotly::ggplotly(ggplot_input, tooltip = "text") %>% 
    plotly::config(
      displaylogo = FALSE, 
      modeBarButtonsToRemove = c("zoom2d", "pan2d",
                                 "select2d", "lasso2d", "autoScale2d",
                                 "hoverClosestCartesian", "hoverCompareCartesian"),
      scrollZoom = TRUE
    ) %>% 
    plotly::style(hoveron = "fill") %>% 
    plotly::layout(xaxis = list(showline = FALSE,
                                automargin = FALSE),
                   yaxis = list(showline = FALSE,
                                automargin = FALSE),
                   margin = list(t = 0, r = 0, b = 0, l = 0),
                   font = list(family = "gdstransport",
                               size = 18.4),
                   dragmode = "pan")
}