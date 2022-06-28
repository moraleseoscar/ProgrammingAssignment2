## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
  
        ## We create the set and get functions to the inverse
        setInverse <- function(inverse) {
        inv <<- inverse
        }
        
        getInverse <- function() {
        inv
        }
        
        # We create the set and get functions from the matrix

        set <- function( matrix ) { 
        m <<- matrix
        inv <<- NULL
        }

        get <- function() {
        m
        }
        
        # List of returns
        list(set = set, get = get,
        setInverse = setInverse,
        getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
         
        ## get the inverse 
        m <- x$getInverse()
        
        if( !is.null(m) ) {
        message("getting cached data")
        return(m)
        }
        
        data <- x$get()
        
        ## Matrix multiplication
        m <- solve(data) %*% data
        
        x$setInverse(m)
        
        print(m)
}
