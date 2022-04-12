#' Turn a static horizontal bar chart into an interactive plotly object.
#'
#' @param ggplot_input static ggplot horizontal bar chart.
#'
#' @return An interactive plotly chart.
#' @export
#'
#' @examples NULL
plotlify_barchart_horizontal <- function(ggplot_input) {
  plotly::ggplotly(ggplot_input, tooltip = "text") %>% 
    plotly::config(
      displaylogo = FALSE, 
      modeBarButtonsToRemove = c("zoom2d", "zoomIn2d", "zoomOut2d", "pan2d",
                                 "select2d", "lasso2d", "autoScale2d",
                                 "resetScale2d", 
                                 "hoverClosestCartesian", "hoverCompareCartesian"
      )
    ) %>% 
    plotly::layout(
      xaxis = list(
        tickfont = list(
          size = 18.4)),
      
      yaxis = list(
        tickfont = list(
          size = 18.4)),
      
      legend = list(
        title = list(
          text = ""
        ),
        font = list(
          size = 18.4
        ),
        orientation = "h",
        traceorder = "reversed"
      ),
      
      hovermode = "fill", 
      
      margin = list(
        t = 25,
        r = 15,
        b = 0,
        l = 15
      )
    )
}
  