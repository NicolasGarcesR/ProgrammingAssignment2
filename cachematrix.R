## This functions allow the user to get the inverse matrix of a matrix in the cache memory


## This function allows the user to get the inverse of any matrix in the cache

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  set <- function(a){
    x <<- a
    inverse <<- NULL
  }
  get <- function() x
  set_inverse <- function(solveMatrix) inverse <<- solveMatrix
  get_inverse <- function() inverse
  list(set = set, get = get, set_inverse = set_inverse, get_inverse = get_inverse)
}


## this function returns the inverse matrix

cacheSolve <- function(x, ...) {
  inverse <- x$get_inverse()
  if(!is.null(inverse)){
    return(inverse)
  }
  info<- x$get()
  inverse <- solve(info)
  x$set_inverse(inverse)
  inverse
}
