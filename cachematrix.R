## Put comments here that give an overall description of what your
## functions do

## This function sets and gets cache

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <-function(y) {   ## set the value of the matrix
     x <<- y
     inv <<-NULL
  }
  get <- function() x
  setInverse <-function(solve) inv <<-solve
  getInverse <- function() inv  ## get the inverted matrix
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}


##This function checks for a valid cahce and returns

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   inv <- x$getInverse()
   if(!is.null(inv)){
     message("getting cached data")
     return(inv)}
   data <- x$get()
   inv <- solve(data, ...)
   x$setInverse(inv)
   inv
  ## Return a matrix that is the inverse of 'x'
   }

