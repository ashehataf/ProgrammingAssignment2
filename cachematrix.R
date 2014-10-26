## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
## invX: the variable to hold the inverse matrix of x  
  invX <- NULL
## set: setter function if you want to change the value of matrix x  
  set <- function(y){
    x <<- y
    invX <<- NULL
  }
## get: getter function to return the value of matrix x
  get <- function() x
  setInvX <- function(l) invX <<- l
  getInvX <- function() invX
## list: return a list of functions
  list(set = set, get = get, setInvX = setInvX, getInvX = getInvX)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  invX <- x$getInvX()
## check if the inverse matrix of x is already cached or not  
  if(!is.null(invX)){
## if chached then return the cached value
    message("getting cached data")
    return(invX)
  }
## if not cached then calculate the inverse matrix of x using 'solve' function
  i <- solve(x$get())
## cache the invers value of matrix x to be used in the future, if the value of matrix x
## had not been changed
  x$setInvX(i)
## return the inverse matrix of x
  i
}
