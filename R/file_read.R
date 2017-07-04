#' file_read
#' 
#' read text or excel file based on the file extension
#'
#' @param x string; filename
#' @param ... additional args
#'
#' Reads in a file using internal \code{readxl::read_excel} or 
#' \code{file_read_encoded}.
#' 
#' @seealso 
#'   \code{\link[readxl]{read_excel}} 
#'   \code{\link{file_read_encoded}}
#'
#' @import readxl magrittr
#' @export


file_read <- function(x, ...) {

  if( ! base.tools::is.string(x) )
    stop("file is not a string.")

  if( x %>% file_ext %>% str_detect("xls") )
    file <- x %>% readxl::read_excel  else
    file <- x %>% file_read_encoded(...)

  return(file)

}

#' @rdname file_read
#' @export 

read_file <- function(...) { 
  warning( "'read_file' is deprecated. Please use 'file_read' instead")
  file_read(...)
}
