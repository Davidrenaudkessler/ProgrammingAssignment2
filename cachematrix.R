  ## We build two functions in order to cache the inverse ot a matrix.
  ## Why we do this ? Because it's a process that can be time-consuming.
  ## So the first function (makeCacheMatrix) is to create the object.
  ## The second function (cacheSolve) is to compute the object we created.

  ## Before making this assignement, we must know how matrixes
  ## work. I give you one thing: we only can inverse square matrix.
  ## There's a function in R to "inverse" other matrixes, but it's
  ## not a inversion, mathematically speaking.

  #####################
  ## makeCacheMatrix ##
  #####################
  
  ## makeCacheMatrix has to build a list of functions:
  ## 1. set the value of the (square) matrix.
  ## 2. get the value of the (square) matrix.
  ## 3. set the value of the inverse of the (square) matrix.
  ## 4. get the value of the inverse of the (square) matrix.
  ## See by yourself in the assignement:
  ## "Computing the inverse of a square matrix can be done 
  ##  with the solve function in R. For example, if X is a 
  ##  square invertible matrix, then solve(X) returns its 
  ##  inverse." (it is the second function - but we need same values)
  ## So we use solve, and name value s. S will store what we want in cache.
  ## it was m in the mean example, why not s in this solve case ?

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

  ###############
  ## cacheSolve##
  ###############
  
## And now, we compute the inverse of the matrix.
## But this function have a great advantage.
## What if the matrix is already inverted ?
## The function says you it is the case.

cacheSolve <- function(x, ...) {
    s <- x$getsolve()
    if(!is.null(m)) {
      message("getting cached data")
      return(m)
    }
    data <- x$get()
    s <- solve(data, ...)
    x$setsolve(s)
    s
  }
