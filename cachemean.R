## cachemean.R
##
## Get mean of a cached Vector
## Usage:
##  v <- makeVector(c(1, 2, 3, 4))
##  cachemean(v)
cachemean <- function(x, ...) {
  mv <- x$getmean()
  if(!is.null(mv)) {
##    message("Obtaining cached data")
    return(mv)
  }
  data <- x$get()
  mv <- mean(data, ...)
  x$setmean(mv)
  mv
}