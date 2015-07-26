## Put comments here that give an overall description of what your
## functions do

## Functions that cache the inverse of a matrix
##
## Usage example:
##
## > source('cachematrix.R')
## > m <- makeCacheMatrix(matrix(c(2, 0, 0, 2), c(2, 2)))
## > cacheSolve(m)
## [,1] [,2]
## [1,]  0.5  0.0
## [2,]  0.0  0.5

## writing the funtion

makeCacheMatrix <- function(x = matrix()) {
 
## hold the cached value, intially hold null  
   r<- NULL
   
## store matrix
  set<-function(y){
    x<<-y
    
## new value assigned to matrix, again it hold null
    r<<- NULL

  }
  
## returns stored matrix
  
  get<-function()x
  
## cache the argument
  
  setinverse<- function(inv) r<<- inv
  
## get cached value
  
  getinverse<- function()r
  list(
    
    set = set,
    get= get,
    setinverse = setinverse,
    getinverse = getinverse
    
  )
}


## Write a short comment describing this function

## Writing function to calculate theinverse of special matrix created with above function

cacheSolve <- function(x, ...) {
  
  r<- x$getinverse()
  if (!is.null(r)) {
    message(" Getting the cached data")
    return(r)
    
  }
  m <- x$get()
  r<- solve(m, ...)
  x$setinverse(r)
r

        ## Return a matrix that is the inverse of 'x'
}
  
