get_result <- function(x, y) {
  if (!is.numeric(x) || !is.numeric(y) || is.null(x) || is.null(y) || x < 2 || y <2 ){
    return("entrée invalide")
  }
  
  cat(paste0("/", strrep("-", x - 2), "\\","\n"))

  for (i in 1:(y - 2)) {
    cat(paste0("|", strrep("0", x - 2), "|","\n"))
  }
  
  cat(paste0("\\", strrep("-", x - 2), "/","\n"))
}
    
get_result(6,4)


