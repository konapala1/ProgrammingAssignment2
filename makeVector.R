## makeVector.R
##
makeVector <- function(x = numeric()) {
  mv <- NULL
  set <- function(y) {
    x <<- y
##    mv <<- NULL
  }
  get <- function() x
  setmean <- function(mean) mv <<- mean
  getmean <- function() mv
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}