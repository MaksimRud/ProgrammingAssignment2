## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        invers <- NULL
        set <- function(y) {
          x <<- y
          invers <<- NULL
        }
        get <- function() x
        setinv <- function(inv) invers <<- inv
        getinv <- function() invers
        list(set = set, get = get,
             setinv = setmean,
             getinv = getmean)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
        if(!is.null(inv)) {
          message("getting cached data")
          return(inv)
        }
        data <- x$get()
        inv <- solve(data, diag(nrow = nrow(data)), ...)
        x$setinv(m)
        inv
}
