## Put comments here that give an overall description of what your
## functions do

## is a square invertible matrix
## return is a list that is an input into cacheSolve()
## list contains functions that set & get matrix
## then set and get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
     inv = NULL
     set = function(y) {
          x <<- y
          inv <<- NULL
     }
     
     get <- function() x
     setinv = function(inverse) inv <<-inverse
     getinv = function() inv
     list(set=set, get=get, setinv=setinv, getinv=getinv)
}


## Write a short comment describing this function
## cacheSolve returns the inverse of the original input
## matrix
## checks cache first to see in already calculated.
## if so, it pull the inverse from cache and skips calc

cacheSolve <- function(x, ...) {
     ## Return a matrix that is the inverse of 'x'
     inv = x$getinv()
     if (!is.null(inv)){
          message("Getting cached data")
          return(inv)
     }
     mat.data = x$get()
     x$setinv(inv)
     return(inv)
}
