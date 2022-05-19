#' Custom ggplot theme for most static charts
#'
#'To be used with vertical bar charts and line graphs.
#'
#' @return NULL
#' @export
#'
#' @examples NULL
theme_gov <- function() {
  ggplot2::theme_light(base_size = 21.85, base_family = "gdstransport") +
    ggplot2::theme(
      text = ggplot2::element_text(colour = "#0b0c0c", family = "gdstransport"), 
      panel.grid.major.y = ggplot2::element_line(size = 0.65, colour = "#b1b4b6", linetype = 3),
      panel.grid.minor = ggplot2::element_blank(),
      panel.grid.major.x = ggplot2::element_blank(),
      panel.border = ggplot2::element_blank(),
      axis.ticks.x = ggplot2::element_line(size = 0.75, colour = "#b1b4b6"),
      axis.ticks.y = ggplot2::element_blank(), 
      axis.line.x = ggplot2::element_line(size = 0.75, colour = "#b1b4b6"),
      axis.text = ggplot2::element_text(colour = "#0b0c0c", size = 18.4),
      axis.text.x = ggplot2::element_text(colour = "#0b0c0c", size = 18.4, family = "gdstransportbold"),
      axis.title.y = ggplot2::element_blank(),
      axis.title.x = ggplot2::element_blank(), 
      strip.background = ggplot2::element_blank(),
      strip.text = ggplot2::element_text(colour = "#0b0c0c", size = 18.4, family = "gdstransportbold"),
      legend.title = ggplot2::element_blank(),
      legend.text = ggplot2::element_text(colour = "#0b0c0c", size = 18.4, family = "gdstransportbold"),
      legend.position = "bottom",
      plot.title.position = "plot")
}