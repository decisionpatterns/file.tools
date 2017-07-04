#' Read encoded files 
#' 
#' Try reading a file using a number of encodings 
#' 
#' @param file string;
#' @param encodings character; series of encodings to try.
#' @param ... additional arguments
#' 
#' \code{file_read_encoded} is useful when you don't know the encoding of a file
#' and have to try a number of encodings.
#'
#' @examples
#'
#' \dontrun{
#'    "./my_encoded_file.txt" %>% file_read_encoded
#' }
#'
#' @import magrittr
#' @export 

file_read_encoded <- function(file, encodings, ... ) {

  warn = getOption('warn')
  
  try( silent=TRUE, {
    warn <- getOption('warn')
    options(warn=2)
    dat <- file %>% read.delim(stringsAsFactors = FALSE)
  })

  for( encoding in encodings ) { 
    if( ! exists("dat"))
        dat <- file %>% file(encoding=encoding) %>% read.delim(stringsAsFactors = FALSE)
  }
  
  options(warn=warn)

  return(dat)
}

#' @rdname file_read_encoded
#' @export 

read_encoded <- function(...) { 
  warning( "'read_encoded' is deprecated. Please use 'file_read_encoded'.")
  file_read_encoded(...)  
}
