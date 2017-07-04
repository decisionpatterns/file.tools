#' Get file extension
#' 
#' Extract the extension from filename string
#' 
#' @param x character vector of filenames
#' 
#' @details 
#'  
#' - tk
#' 
#' @return character
#' 
#' @seealso 
#'   `stringr::str_extract`
#'
#' @examples
#'   
#'   file_extension("README.md")
#'   file_extension("README.txt")
#'   file_extension("TODO.text")
#'      
#' @md
#' @import stringr
#' @export 

file_extension <- function(x) {
  stringr::str_extract(x, "\\.[^.]+$" )  %>% stringr::str_replace("^\\.","")
}

#' @rdname file_extension
#' @export 

file_ext <- file_extension

