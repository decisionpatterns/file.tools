#' file globbing
#' 
#' Alias for \code{Sys.glob}
#' 
#' @param paths character; vector of patterns for relative or absolute filepaths. 
#' Missing values are ignored.
#' 
#' @param dirmark logical; should matches to directories from patterns that do 
#' not already end in / have a slash appended? May not be supported on all 
#' platforms.
#' 
#' @details 
#' 
#' See \code{\link[base]{Sys.glob}}
#' 
#' @export

file_glob <- base::Sys.glob 
