#' Turn a static multivariate time-series chart into an interactive plotly object.
#'
#' @param ggplot_input static ggplot chart with multiple timeseries
#'
#' @return An interactive plotly chart.
#' @export
#' 
#' @examples NULL
plotlify_timeseries_multivar <- function(ggplot_input) {
  
  plotly::ggplotly(ggplot_input, tooltip = "text") %>% 
    plotly::config(
      displaylogo = FALSE, 
      modeBarButtonsToRemove = c("zoom2d", "zoomIn2d", "zoomOut2d", "pan2d",
                                 "select2d", "lasso2d", "autoScale2d"# , #"resetScale2d", 
                                 # "hoverClosestCartesian", "hoverCompareCartesian"
      )
    ) %>% 
    plotly::layout(
      font = list(family = "arial"),
      
      xaxis = list(
        tickfont = list(
          size = 18.4,
          family = "arial")),
      
      yaxis = list(
        tickfont = list(
          size = 18.4,
          family = "arial")),
      
      legend = list(
        title = list(
          text = ""
        ),
        font = list(
          size = 18.4,
          family = "arial"
        ),
        orientation = "h"
      ),
      
      hovermode = "x"
    ) %>% 
    plotly::style(mode = "markers+lines")
  
}