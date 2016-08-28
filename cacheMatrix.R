##This is the answer to the assignment 2
## This function can remember the inverse of the matrix

## create matrix cache

makeCacheMatrix <- function(x = matrix()) {
 i <- NULL
 set <- function(y){
   x <<- y
   i <<- NULL
 }
 get <- function() x
 setMatrix <- function(solve) i<<- solve
 getMatrix <- function() i
 list(set = set, get = get, setMatrix = setMatrix, getMatrix = getMatrix)
}


## If the inverse has been remembered, the function will avoid calculate it again

cacheSolve <- function(x, ...) {
      i <- x$getMatrix()
      if(!is.null){
        message("getting cache data")
        return(i)
      }
      data<- x$get()
      i <- solve(data,...)
      x$setMatrix(i)
      i
}
