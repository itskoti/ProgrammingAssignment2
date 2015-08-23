## Put comments here that give an overall description of what your ## functions do
##This is a modified code for the Prog Assingment 2 to include inverse function.
##MEarlier function had mean calculation. See original document of Prog Assignment 2.
## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  ## Ensure if the inverse property is initialized to null
  i <- NULL
  ## Function to assign the matrix with input and null value for inverse.
  set <- function( matrix ) {
    m <<- matrix
    i <<- NULL
  }
  ## Get function with return value of matrix m
  get <- function() {
    ## Return the matrix
    m
  }
  ## Assignment to get the inverse value set earlier
  setInverse <- function(inverse) {
    i <<- inverse
  }
  ## Function method to get the inverse of the matrix (assigned as i)
  getInverse <- function() {
    ## Return the inverse property
    i
  }
  ## Collection of lists 
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)
  ##End of makeCacheMatrix function
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  ## Return a matrix that is the inverse of 'x' input
  m <- x$getInverse()
  ## Just return the inverse if its already set by checking not null
  if( !is.null(m) ) {
    message("getting cached data")
    return(m)
  }
  ## Input from matrix object
  data <- x$get()
  ## Execute function - inverse with %*% for matrix multiplication
  m <- solve(data) %*% data
  ##Assign to object the value of the inverse
  x$setInverse(m)
  ## Return the matrix
  m
  ##End of cacheSolve function.
}

