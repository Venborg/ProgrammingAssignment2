## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## So I'm trying to set up a matrix funtion, from where it should be possible to
## find the mean of the inverse matrix. From the example vector, I have basically just changed the 
## mean into inverse. You want to use the <<- instead of the <- when assigning y to x because you are
## assigning a value to an object in a different environment that you are in currently.

makeCacheMatrix <- function(x = matrix()) {
  matrixinv <- NULL
  set <- function(y) {
      x <<- y
      matrixinv <<- NULL 
  }
  
  get <- function() x
  setinverse <- function(mean) maxtrixinv <<- mean
  getinverse <- function() matrixinv
  list(set= set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
## The first part should be able to return the inverted Matrix calculated previously. 
## The second part calculates the inverse Matrix, if it has not already been taken care of. 
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  matrixinv <- x$getinverse()

   if(!is.null(matrixinv)) {
     
      message("getting invert matrix")
  
         return(matrixinv)
    }
  data <- x$get()
  matrixinv <- solve(data, ...)
  x$setinverse(matrixinv)
  
  return(matrixinv)
  
}
