## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  invX <- NULL
  set <- function(y){
    x <<- y
    invX <<- NULL
  }
  get <- function() x
  setInvX <- function(l) invX <<- l
  getInvX <- function() invX
  list(set = set, get = get, setInvX = setInvX, getInvX = getInvX)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invX <- x$getInvX()
  if(!is.null(invX)){
    message("getting cached data")
    return(invX)
  }
  i <- solve(x$get())
  x$setInvX(i)
  i
}
