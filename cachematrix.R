## MakeCacheMatrix will create a matrix and 
## save it's inverse in cache
##  
## cacheSolve will return an inverted matrix
## from cache if it is there or invert it if it is not

## MakeCacheMatrix will create a matrix and 
## save it's inverse in cache
## 
## x is the name of the matrix,
## numrows is the number of desired rows
## numcols is the numberof desired columns
## returns m, the inverted matrix

makeCacheMatrix <- function(x = matrix(), numrows=0,numcols=0) {

  x <- matrix(, nrow = numrows, ncol = numcols)
  m <<- solve(x)

}


## cacheSolve will return an inverted matrix
## x is the matrix to be inverted
## assumes x is invertable
## returns the matrix as is if in cache or 
## inverts x into m and returns m

cacheSolve <- function(x, ...) {
        
  ## see if the matrix is in cache
  if(!is.null(x)) {
    message("getting cached data")
    return(x)
  }
  ## not in cache
  ## invert it and put it in cache for later use
  m <<- solve(x)
  m
  ## Return a matrix that is the inverse of 'x'
}
