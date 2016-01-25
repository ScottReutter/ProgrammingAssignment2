## "Put comments here that give an overall description of what your functions do"
## Hopefully, they complete this assignment.

## "Write a short comment describing this function"
## This should create a matrix that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function() m
  list(set = set, get = get, setmean = setmean, getmean = getmean)
}


## "Write a short comment describing this function"
## This one should compute the inverse of its buddy above.

cacheSolve <- function(x, ...) {
        ## "Return a matrix that is the inverse of 'x'"
        ## Only because you asked nicely.
  m <- x$getmean()
  if(!is.null(m)) {
    message("retrieving cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
}
## Nailed it, right?
