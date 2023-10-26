#Clement Marchand
#Projet des reines en R
###############################################################################################
#functions

is_safe <- function(int, plat) {
  if (grepl(int, plat)) {
    return(FALSE)
  } else {
    num_plat = strsplit(plat, "")[[1]]
    not_safe = ""
    
    for (num in num_plat) {
      if (as.numeric(as.numeric(num) + (nchar(plat) + 1 - which(num_plat == num))) <= 9) {
        not_safe <- paste0(not_safe, as.numeric(num) + (nchar(plat) + 1 - which(num_plat == num)))
      }
      if (as.numeric(as.numeric(num) - (nchar(plat) + 1 - which(num_plat == num))) >= 0) {
        not_safe <- paste0(not_safe, as.numeric(num) - (nchar(plat) + 1 - which(num_plat == num)))
      }
    }
    
    if (grepl(int, not_safe)) {
      return(FALSE)
    } else {
      return(TRUE)
    }
  }
}

safe_queens <- function(plat, nombre_de_print = 0) {
  if (nchar(plat) == 10) {
    print(plat)
    nombre_de_print <- nombre_de_print + 1
  } else {
    for (i in 0:9) {
      if (is_safe(i, plat)) {
        plat <- paste0(plat, i)
        nombre_de_print <- safe_queens(plat, nombre_de_print)
        plat <- substring(plat, 0, nchar(plat) - 1)
      }
    }
  }
  return(nombre_de_print)
}

###############################################################################################
#algo

safe_queens("")
