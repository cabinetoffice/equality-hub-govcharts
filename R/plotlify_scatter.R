#' Turn a static scatterplot into an interactive plotly object.
#'
#' @param ggplot_input static ggplot scatterplot 
#'
#' @return An interactive plotly chart.
#' @export

plotlify_scatter <- function(ggplot_input) {
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
      font = list(family = 'arial'),
      
      xaxis = list(
        
        title = list(
          font = list(
            size = 18.4,
            family = 'arial')),
        
        tickfont = list(
          size = 18.4,
          family = 'arial')),
      
      yaxis = list(
        title = list(
          font = list(
            size = 18.4,
            family = 'arial')),
        
        tickfont = list(
          size = 18.4,
          family = 'arial')),
      
      legend = list(
        title = list(
          text = ""
        ),
        font = list(
          size = 18.4,
          family = 'arial'
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