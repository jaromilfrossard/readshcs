#' Get/set the default directory of the SHCS data
#'
#' @param x chr. Path to the SHCS directory.

#' @export
#' @rdname shcs_dir
get_shcs_dir <- function(){
  shcs_dir <- getOption("shcs_dir")
  if(is.null(shcs_dir)){
    stop("No directory has be set. Use set_shcs_dir().")
  }

  return(shcs_dir)
}

#' @export
#' @rdname shcs_dir
set_shcs_dir <- function(x){


  if(all(c(dir.exists(x),is.character(x),length(x)==1L))){
    options(shcs_dir = x)
  }else{
    stop(paste0(x, " is not a valid directory path."))
  }

}
