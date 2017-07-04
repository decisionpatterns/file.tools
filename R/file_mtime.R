#' modify mtime
#' 
#' modify file mtime
#' 
#' @param path string; path to file
#' @param ... character vector of file paths
#' @param value mtime 
#' 
#' @details 
#'
#' touch -t datetime -m path 
#' 
#' @examples 
#' 
#' file_mtime("delete.me", now() ) 
#' 
#' "delete-me" %>% file_mtime( Sys.time() )
#' 
#' @export

file_mtime <- function( path, value=NULL) { 

  if( is.null(value) ) {  
    mtime <- file.mtime(path)
    return(mtime)
  }
  
  value <- as.POSIXct(value)
  m_dt <- format(value,"%Y%m%d%H%M.%S")
  
  args <- c( "-c", "-t", m_dt, "-m", shQuote(path) ) 
  system2( "touch", args )
   
}


# `file.mtime<-` <- function(x, value ) {
# 
#   browser()
#    # paths <- c(...)
#    value <- as.POSIXct(value)
# 
#    m_dt <- format(value,"%Y%m%d%H%M.%S")
# 
#    args <- c( "-t", m_dt, "-m", shQuote(x) )
#    ret <- system2( "touch", args=args )
# 
#    return(x)
# }
# 
# file.mtime