#' Wait on file modifiction
#' 
#' Wait for a file to be modified
#' 
#' @param file path to file to be watched
#' @param time The time interval to suspend execution for, in seconds.

#' 
#' Simple, platform-independent file watcher. System is slept waiting for the 
#' modification time to change.
#' 
#' @return 
#'   NULL; used for side-effects only
#' 
#' @seealso 
#'   \code{\link[base]{Sys.sleep}} \cr
#'   \code{\link[base]{file.mtime}}
#'     
#' @export

file_wait <- function(file, time=0.2) { 
  mtime =  file.mtime(file)
  while( mtime == file %>% file.mtime() ) Sys.sleep(time)  
}
