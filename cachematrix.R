makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
  get <- function() x
  seti <- function(i) i <<- i
  geti <- function() i
  list(set = set, get = get,
       seti = seti,
       geti = geti)
}## This makeCacheMatrix function creates "vector",which can cache its inverse.
##This code can be made by modifying the example:Caching the Mean of a Vector



cacheSolve <- function(x, ...) {
  i <- x$geti()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- i(data, ...)
  x$seti(i)
  i
}## This cacheSolve function computes the inverse of matrix returned by makeCacheMatrix function.
##This code can be made by modifying the example:Caching the Mean of a Vector

