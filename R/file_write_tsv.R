#' file_write_tsv
#' 
#' A wrapper around \code{\link[utils]{write.table}} with defaults suitable for
#' writing 
#' 
#' @param x object; he object to be written, preferably a matrix or data frame. 
#'   If not, it is attempted to coerce x to a data frame.
#' @param file character string naming a file or a connection open for 
#'   writing. "" indicates output to the console.
#' @param ... additional arguments passed to \code{\link[utils]{write.table}}
#' @param sep string; Values within each row of x are separated by this string.
#' @param row.names logical or character, see \code{\link[utils]{write.table}} 
#' @param quote logical or numeric, see \code{\link[utils]{write.table}}
#' 
#' @details 
#'   \code{file_write_tsv} wraps \code{\link{write.table}} providing sensible 
#'   defaults for writing tab-separated value files.  
#'   
#' 
#' @seealso 
#'   \code{\link[utils]{write.table}}
#'   
#' @note 
#'   shoule the default for file be a file named after x?
#'   file=paste0( substitute(x), ".tsv")
#'   
#' @export

file_write_tsv <- function( x, file="", ..., sep="\t", row.names = FALSE, quote=FALSE )
  write.table( x, file, sep=sep, row.names=row.names, quote=quote, ... )


#' @rdname file_write_tsv
#' @export

write.tsv <- function(...) { 
  warning( "'write.tsv' is deprecated. Please use 'file_write_tsv'")  
  file_write_tsv(...)
}

