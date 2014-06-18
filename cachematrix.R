## Put comments here that give an overall description of what your
## functions do
## A pair of functions that cache the inverse of a matrix


## Write a short comment describing this function
## Create a special list to store the matirx inverse

makeCacheMatrix <- function(x = matrix()) {
  
  
 
    m <- NULL
    set <- function(y) {
      x <<- y
      m <<- NULL
    }
    get <- function() x
    setsolve <- function(solve) m <<- solve
    getsolve <- function() m
    list(set = set, get = get,
         setsolve = setsolve,
         getsolve = getsolve)
  

}




## Write a short comment describing this function
## Calculates the mean of the special "vector" created with the above function.

cacheSolve <- function(x, ...) {
       
  
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  ## Return a matrix that is the inverse of 'x'
  m <- solve(data, ...)
  x$setsolve(m)
  m
}
