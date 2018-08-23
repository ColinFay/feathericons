#' A Feather Icon div
#'
#' @param icon the icon
#' @param ... optional content to the div
#'
#' @importFrom htmltools tagList tags HTML
#' @importFrom attempt stop_if_not
#' @importFrom glue glue
#'
#' @return an HTML div
#' @export
#'
#' @examples
#' feather_icons("circle")

feather_icons <- function(icon){
  stop_if_not(icon, ~ .x %in% icons_list, "This icon is not available")
  HTML(
      glue(
      "<div data-feather = '{icon}' ></div> "
      )
    )
}
