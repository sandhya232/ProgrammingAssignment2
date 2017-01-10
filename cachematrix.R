The functions are used to return the inverse of a cached matrix

The first function is to create a special matrix to be inversed
 function

makeCacheMatrix <- function(x = matrix()) {matinv <- NULL
        set <- function(y) {
                x <<- y
                matinv <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) matinv <<- inverse
        getinverse <- function() matinv
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)


}




This function caches the special matrix and inverses it

 function

cacheSolve <- function(x, ...) {
  

 matinv <- x$getinverse()
        if(!is.null(matinv)) {
                message("getting cached data")
                return(matinv)
        }
        data <- x$get()
        matdata <- solve(data, ...)
        x$setinverse(matinv)
        matinv
   


}

   '