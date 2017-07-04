#' file_basename - get basename, optionally omitting extension
#' 
#' Similar to \code{base::basename} but allows for the stripping 
#' of the extension, otherwise a complete drop-in replacements
#' 
#' @param path character; path of a resource
#' @param extension logical; whether to keep the file extension (default:TRUE) 
#' 
#' Fumctions as \code{\link[base]{basename}} except for the ability
#' to strip the extension from the path. The extension is the final
#' \code{.} character and anything that follows.
#' 
#' @examples
#'   file_basename( "foo/bar.baz" )
#'   file_basename( "foo/bar.baz", extension=FALSE )
#'   file_basename( "/foo/bar.baz.burp", extension=FALSE )
#'   file_basename( "/foo/bar.baz.", extension=FALSE )
#'
#' @export

file_basename <- function( path, extension=TRUE ) 
  if( ! extension ) { 
    sub( "\\.[^\\.]*$", "", base::basename(path),perl=T )
  } else { 
    base::basename(path)
  }
