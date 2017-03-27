##This function does 4 things:
##Sets the value of the matrix
##Gets the value of the matrix
##Sets the value of the inverse
##Gets the value of the inverse
makeCacheMatrix <- function(x = matrix()){
  m<-NULL
  set<-function(y)
  {
    x<<-y
    m<<-NULL
    }
  get<-function() x 
  setmatrix<-function(solve)  m<<- solve 
  getmatrix<-function() m 
  list(set=set, get=get, setmatrix=setmatrix, getmatrix=getmatrix) 
  }
##This function calculates the inverse of the matrix
##First checks if the inverse has already been calculated
##If so, it will skip the calculations and read it from the cache
##If not, it calculates the inverse and sets it in the cache

cacheSolve <- function(x=matrix(), ...) 
{ 
  m<-x$getmatrix() 
  if(!is.null(m))
  {
    message("getting cached data") 
    return(m)
  }
  matrix<-x$get
  m<-solve(matrix, ...) 
  x$setmatrix(m) m 
  }
