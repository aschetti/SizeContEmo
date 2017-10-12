# Startup

.First <- function(){ # at startup
  pkgdir <- "E:/R_workspace/packages" # set package directory
  .libPaths(c(pkgdir,.libPaths())) # add package directory
  # if (!require("pacman")) install.packages("pacman",dependencies=TRUE,lib=pkgdir) # install pacman if not already present
  library(pacman,lib.loc=pkgdir) # load pacman
  cat("\014") # clear console
  cat("Hey dude. \nYour .Rprofile has been successfully loaded at", date(), "\n") # welcome message
}

.Last <- function(){ # quit
 cat("\nGoodbye at ", date(), "\n") # goodbye message
}


