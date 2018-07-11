## there are basically 2 fucnctions for caching the matrix inverse using lexical scoping
## the first one is cache the proper matrix inverse and the second function will actually computes the inverse!

## this function will catch the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmatrix <- function(inverse) m <<- inverse
  getmatrix <- function() m
  
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
  
}


## this function will calculate the inverse of the cached matrix returned returned by makeCacheMatrix

cacheSolve <- function(x, ...) {
  m<- x$getinverse()
  if(!is.null(m)){
    message("getting inverse matrix")
    return(m)
  }
  data<- get(data, ...)
  x$setinverse(m)
  m
  
}
