# Clement Marchand
# Projet des reines en R
###############################################################################################
#Librairies
library(pheatmap) 
###############################################################################################
#init
data <- c()
###############################################################################################
# Functions

is_safe <- function(int, plat) {
  if (grepl(int, plat)) {
    return(FALSE)
  } else {
    num_plat = strsplit(plat, "")[[1]]
    not_safe = ""
    
    i <- 1
    while (i <= length(num_plat)) {
      num <- num_plat[i]
      if (as.numeric(as.numeric(num) + (nchar(plat) + 1 - i)) <= 9) {
        not_safe <- paste0(not_safe, as.numeric(num) + (nchar(plat) + 1 - i))
      }
      if (as.numeric(as.numeric(num) - (nchar(plat) + 1 - i)) >= 0) {
        not_safe <- paste0(not_safe, as.numeric(num) - (nchar(plat) + 1 - i))
      }
      i <- i + 1
    }
    
    if (grepl(int, not_safe)) {
      return(FALSE)
    } else {
      return(TRUE)
    }
  }
}

heatmap <- function(data){
  data[[1]] <- rev(data[[1]])
  heatmap_matrix <- matrix(0, nrow = 10, ncol = 10)
  i <- 1
  while (i <= length(data)) {
    j <- 1
    while (j <= nchar(data[[i]])) {
      value <- as.integer(substr(data[[i]], j, j)) + 1  
      if (value != -1) {
        heatmap_matrix[j, value] <- heatmap_matrix[j, value] + 1
      }
      j <- j + 1
    }
    i <- i + 1
  }
  pheatmap(heatmap_matrix, display_numbers = TRUE, fontsize = 8, cluster_cols = FALSE, cluster_rows = FALSE)
}

safe_queens <- function(plat, nombre_de_print = 0) {
  if (nchar(plat) == 10) {
    data <<- append(data, plat)
    heatmap(data)
    print(plat)
    nombre_de_print <- nombre_de_print + 1
  } else {
    i <- 0
    while (i <= 9) {
      if (is_safe(i, plat)) {
        plat <- paste0(plat, i)
        nombre_de_print <- safe_queens(plat, nombre_de_print)
        plat <- substring(plat, 0, nchar(plat) - 1)
      }
      i <- i + 1
    }
  }
  return(nombre_de_print)
}
###############################################################################################
safe_queens("")


