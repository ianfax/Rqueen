library(stringr)
library(pheatmap) 

data <- c()

is_safe <- function(row, col, int, plat) {
  if(int %in% plat) {
    return(FALSE)
  } else {
    i = 0
    not_safe = ""
    
    while(i < length(plat)) {
      try(
        {
          if(as.numeric(as.numeric(plat[i+1]) + (length(plat) - i)) <= row-1) {
            not_safe <- paste0(not_safe, as.numeric(plat[i+1]) + (length(plat) - i))
          }
          if(as.numeric(as.numeric(plat[i+1]) - (length(plat) - i)) >= 0) {
            not_safe <- paste0(not_safe, as.numeric(plat[i+1]) - (length(plat) - i))
          }  
        }, 
        silent=TRUE
      )
      i <- i + 1 
    }
    
    if(grepl(int, not_safe)){
      return(FALSE)
    } else {
      return(TRUE)
    }
  }
}

safe_queens <- function(row, col, plat = c(), compteur = 0) {
  if(length(plat) == col) {
    print(paste(plat, collapse="_"))
    data <<- append(data, paste(plat, collapse = ""))
    heatmap(data,row,col)
    return(compteur + 1)
  } else {
    i <- 0
    while(i < row) {
      if(is_safe(row, col, i, plat)) {
        plat <- append(plat, i)
        compteur <- safe_queens(row, col, plat, compteur)
        plat <- plat[-length(plat)]
      }
      i <- i + 1
    }
    
    nb_X <- sum(plat == "X")
    if (nb_X < max(row, col)-min(row, col)) {
      plat <- append(plat, "X")
      compteur <- safe_queens(row, col, plat, compteur)
      plat <- plat[-length(plat)]
    }
  }
  
  return(compteur)
}

heatmap <- function(data,row,col){
  
  heatmap_matrix <- matrix(0, nrow = row, ncol = col)
  i <- 1
  while (i <= length(data)) {
    j <- 1
    while (j <= nchar(data[[i]])) {
      value <- as.integer(substr(data[[i]], j, j)) + 1  # Ajoutez 1 à l'indice de la colonne
      if (value != -1) {
        heatmap_matrix[j, value] <- heatmap_matrix[j, value] + 1
      }
      j <- j + 1
    }
    i <- i + 1
  }
  
  pheatmap(heatmap_matrix, display_numbers = TRUE, fontsize = 8, cluster_cols = FALSE, cluster_rows = FALSE)
}


###################################################
safe_queens(8,8)
