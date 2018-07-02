.First <- function(){ # at startup
  .libPaths("E:/R_workspace/packages/")
  # colorful welcome message
  library("crayon")
  cat(
    silver$bgWhite$bold('\nHello!\n')
  )
}

.Last <- function(){ # quit
  # colorful goodbye message
  cat(
    silver$bgWhite$bold('\nHope you had fun!')
  )
  # pause before quitting
  take.a.break <- function(x)
  {
    p1 <- proc.time()
    Sys.sleep(x)
    proc.time() - p1
  }
  take.a.break(2) # 2 seconds
}