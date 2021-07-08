##Peer homework for Rprogramming week 3 in coursera.
## I used the variable "jlvs" throughout the whole program.


## The makeCacheMatrix <- function(x=matrix() generates a unique "matrix" object that can store its inverse.

makeCacheMatrix <- function(x = matrix()) {
  jlvs <- NULL
  set <- function(y){
    x <<- y
    jlvs <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) jlvs <<- inverse
  getInverse <- function() jlvs 
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}

## The inverse of the special "matrix" returned by makeCacheMatrix is computed with this function.

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  jlvs <- x$getInverse()
  if(!is.null(jlvs)){
    message("getting cached data")
    return(jlvs)
  }
  mat <- x$get()
  jlvs <- solve(mat,...)
  x$setInverse(jlvs)
  j
}
