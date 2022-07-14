#' Custom ggplot theme for choropleth maps
#'
#' To be used with choropleth maps
#'
#' @return NULL
#' @export
#'
#' @examples NULL
theme_gov_choro <- function() {
  ggplot2::theme_void() +
    ggplot2::theme(legend.title = element_text(family = "arial", size=14),
                   legend.text = element_text(family = "arial", size=14))
}