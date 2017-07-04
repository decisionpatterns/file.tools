#' Absolute file path
#' 
#' Get the absolute file path; alias of \code{\link[base]{normalizePath}}.
#' 
#' @param path characterl vector of paths
#' @param winslash character; separator to by used on windows
#' @param mustWork logical; if \code{TRUE} then an error is given if the result 
#' cannot be determined; if NA then a warning.
#' 
#' @details
#' 
#' See \code{\link[base]{normalizePath}}
#' 
#' @export

file_abs_path <- base::normalizePath
