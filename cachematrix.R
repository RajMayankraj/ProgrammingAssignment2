## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  res<- solve(x)
  return(res)
}


## will check if components are equal else will return its inverse

cacheSolve <- function(x, ...) {
  res1<- makeCacheMatrix(x)
  if(all(res1==x))
  {
    return(solve(x))
  }
        ## Return a matrix that is the inverse of 'x'
}
