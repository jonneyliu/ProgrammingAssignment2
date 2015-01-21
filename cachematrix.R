## Put comments here that give an overall description of what your
## functions do
## Create 2 functions that can cache the solution to the inverse of a square matrix.


## First function makeCacheMatrix takes a matrix makes it into a  'special matrix' which is really just a list of functions
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  get <- function() x
  setSolve <- function(solve) m <<- solve
  getSolve <- function() m
  #below lists the set of functions that make uo makeCacheMatrix
  list(set = set, get = get,
       setSolve = setSolve,
       getSolve = getSolve)
}


## Write a short comment describing this function
#cacheSolve takes makeCacheMatrix and stores the inverse of the square matrix provided
#cacheSolve will store the inverse matrix when solved and will retrieve if inverse previously solved already
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
          m <- x$getSolve()
  if(!is.null(m)) {x
                   message("getting cached data")
                   return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setSolve(m)
  m
}
