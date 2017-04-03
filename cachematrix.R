##This function does 4 things:
##Sets the value of the matrix
##Gets the value of the matrix
##Sets the value of the inverse
##Gets the value of the inverse
makeCacheMatrix <- function(x = numeric()) {
m <- NULL
set <- function(y) {
x <<- y
m <<- NULL
}
get <- function() x
setinv <- function(inverse) m <<- inverse
getinv <- function() m
list(set = set, get = get,
setinv = setinv,
getinv = getinv)
}
##This function calculates the inverse of the matrix
##First checks if the inverse has already been calculated
##If so, it will skip the calculations and read it from the cache
##If not, it calculates the inverse and sets it in the cache
cacheSolve <- function(x, ...) {
m <- x$getinv()
if(!is.null(m)) {
message("getting cached data")
return(m)
}
data <- x$get()
m <- solve(data, ...)
x$setinv(m)
m
}
