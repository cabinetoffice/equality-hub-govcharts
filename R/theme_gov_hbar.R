#' Custom ggplot theme for static horizontal bar charts
#'
#'To be used with horizontal bar charts only.
#'
#' @return NULL
#' @export
#'
#' @examples NULL

theme_gov_hbar <- function() {
  theme_light(base_size = 21.85, base_family = "gdstransport") +
    theme(
      text = element_text(colour = "#0b0c0c", family = "gdstransport", 10), # default text size, 10 pt = 16 px with gov.uk primary text colour
      panel.grid.major.y = element_blank(),
      panel.grid.minor = element_blank(),
      panel.grid.major.x = element_line(size = 0.65, colour = "#b1b4b6", linetype = 3),
      panel.border = element_blank(),
      axis.ticks.x = element_line(size = 0.75, colour = "#b1b4b6"),
      axis.ticks.y = element_blank(), 
      axis.line.x = element_line(size = 0.75, colour = "#b1b4b6"),
      axis.text=element_text(colour = "#0b0c0c", size = 18.4),
      axis.text.x =element_text(colour = "#0b0c0c", size = 18.4, family = "gdstransportbold"),
      axis.text.y =element_text(colour = "#0b0c0c", size = 18.4, family = "gdstransportbold"),
      axis.title.y = element_blank(),
      axis.title.x = element_blank(), 
      strip.background = element_blank(),
      strip.text = element_text(colour = "#0b0c0c", size = 18.4, family = "gdstransportbold"),
      legend.title = element_blank(),
      legend.text = element_text(colour = "#0b0c0c", size = 18.4, family = "gdstransportbold"),
      legend.position = "bottom",
      plot.title.position = "plot", 
      
    )
}