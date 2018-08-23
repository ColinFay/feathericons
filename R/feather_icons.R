#' A Feather Icon div
#'
#' @param icon the icon
#' @param ... optional content to the div
#'
#' @importFrom htmltools tagList tags
#' @importFrom attempt stop_if_not
#'
#' @return an HTML div
#' @export
#'
#' @examples
#' feather_icons("circle", "Hello circle!")

feather_icons <- function(icon){
  stop_if_not(icon, ~ .x %in% icons_list, "This icon is not available")
  HTML(
      glue::glue(
      "<div data-feather = '{icon}' ></div> "
      )
    )
}
