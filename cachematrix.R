#The functions are used to return the inverse of a cached matrix

#The first function is to create a special matrix to be inversed
# It first sets the value of the matrix,
# then gets the value of the matrix,
# sets the value of the inverse of the matrix,
# lastly gets the value of the inverse of the matrix.


 

makeCacheMatrix <- function(x = matrix()) {
        
        matinv <- NULL
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




#This function caches the special matrix and returns the inverse of the matrix. 
# It first checks for the computed inverse of matrix. If it exists the function caches the result.
# If the inverse does not exist the function computes the inverse and sets the value using setinverse function.

 

cacheSolve <- function(x, ...) {
  

 matinv <- x$getinverse()
        if(!is.null(matinv)) {
                message("getting cached data.")
                return(matinv)
        }
        data <- x$get()
        matinv <- solve(data, ...)
        x$setinverse(matinv)
        matinv
   


}

   
