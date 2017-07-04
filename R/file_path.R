#' file_path
#'
#' Alias for file.path, consistent with file.tools, plus tidy, intuitive syntax 
#' for creating a file.path
#'
#' @param path character
#' @param file character
#' @param ... arguments passed `base::file.path`
#' 
#' `file_path`` and aliases `base::file.path``
#'
#' @examples
#'   file_path( "/path", "to", "my", "files" )
#'   
#'   "path" %/% "file"
#'   "path" %/% letters[1:3]
#'   
#' @md
#' @export

file_path <- function(...) file.path(...)

#' @export 
#' @rdname file_path 

`%/%` <- function(path,file) file_path( path,file )
