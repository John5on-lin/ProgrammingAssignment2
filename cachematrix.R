## Create a matrix and store its inverse value
makeCacheMatrix <- function(x = matrix()){
        m <- NULL 
        set <- function(y){
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(inv) m <<- inv
        getinverse <- function() m
        list(set = set, get = get, setinverse = setinverse,
             getinverse = getinverse) 
}


## Calculate the inverse matrix if it's new, otherwise print it from cache
cacheSolve <- function(x, ...){
        if(!is.null(m))  {
                print("getting cache data")
                return(m)
        }
        data <- x$get()
        m <- solve(data)
        x$setinverse(m) 
        m
}