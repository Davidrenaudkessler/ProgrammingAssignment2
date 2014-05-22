## Put comments here that give an overall description of what your
## functions do

  #####################
  ## makeCacheMatrix ##
  #####################
  
  ## Before making this assignement, we must know how matrixes
  ## work. I give you one thing: we only can inverse square matrix.
  ## There's a function in R to "inverse" other matrixes, but it's
  ## not a inversion, mathematically speaking.
  
  ## makeCacheMatrix has to build a list of functions:
  ## 1. set the value of the (square) matrix.
  ## 2. get the value of the (square) matrix.
  ## 3. set the value of the inverse of the (square) matrix.
  ## 4. get the value of the inverse of the (square) matrix.
  ## See by yourself in the assignement:
  ## "Computing the inverse of a square matrix can be done 
  ##  with the solve function in R. For example, if X is a 
  ##  square invertible matrix, then solve(X) returns its 
  ##  inverse."
  ## So we use solve, and name value s.

makeCacheMatrix <- function(x = matrix()) {
      s <- NULL
      Set <- function(y) {
          x <<- y
          s <<- NULL
      }
      
    get <- function() x
  
    setsolve <- function(solve) s <<- solve
    
    getsolve <- function() s
    
    list (set = set, get = get,
          setsolve = setsolve,
          getsolve = getsolve)
  }

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
