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
      font = list(family = 'arial'),
      
      xaxis = list(
        
        title = list(
          standoff = 0,
          font = list(
            size = 1
          )
        ),
        
        tickfont = list(
          size = 18.4,
          family = 'arial')),

      yaxis = list(
        
        title = list(
          standoff = 0,
          font = list(
            size = 1
          )
        ),
        
        tickfont = list(
          size = 18.4,
          family = 'arial')),
      
      margin = list(
        l = 0, 
        r = 0, 
        t = 0, 
        b = 0, 
        pad = 4)
      
    ) %>% 
    plotly::style(mode = "markers+lines")
}
