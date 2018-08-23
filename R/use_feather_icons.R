#' Use Feather Icons
#'
#' @return an HTML taglist
#' @export
#'
#' @importFrom htmltools tagList tags includeScript
#'
#' @examples
#' use_feather_icons()

use_feather_icons <- function(){
  tagList(
    includeScript(system.file("feather.js", package = "feathericons")),
    tags$script('$(function() { feather.replace(); });')
  )
}
