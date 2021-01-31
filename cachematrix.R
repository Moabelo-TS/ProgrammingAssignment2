## Put comments here that give an overall description of what your
## functions do

## There are two functions makeCacheMatrix, makeCacheMatrix
## makecachematrix consiist of set, get, settinginv, getinv 

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL     ## initialising inv as null
  set  <- function(y) {
    x <<- y
    inv <<- NULL
  }
get <- function() {x}                             ## function to get matrix x
setinverse <- function(inverse) {inv <<- inverse}
getinverse <- function() {inv}                    ## function to get inverse of the matrix
list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Write a short comment describing this function
## This is used to get cache data
        
cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)){               ## checking whether inverse is NUll
    message("getting cached data")
    return(inv)      ## return inverse value
  }
  mat <- x$get()
  inv <- solve(mat, ...)   ## calculate inverse value
  x$setinverse(inv) 
  inv                            ## Return a matrix that is the inverse of 'x'
}
