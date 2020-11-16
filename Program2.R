# Functions that cache the inverse of a matrix:

# Fucntion that can cache its inverse:
makeCacheMatrix <- function(m = matrix()){
  # Initiating inverse property:
  i <- NULL
  
  # Setting the Matrix:
  set <- function(matrix) {
    m <<- matrix
    i <<- NULL
  }d
  
  # Getting the Matrix:
  get <- function(){
    # Returns Matrix:
    m
  }
  
  # Setting the inverse of the Matrix:
  getInvers <- function(inverse){
    # Returns the inverse property:
    i
  }
  
  # Return the List of the methods:
  list(set = set, get = get, 
       setInverse = setInverse,
       getInvers = getInvers)
}

cacheSolve <- function(x, ...){
  # Return a matrix that is the inverse of 'X'
  m <- x$getInverse()
  
  # Return the inverse if already exist:
  if(!is.null(m)) {
    message("getting cache data")
    return(m)
  }
  
  # Get the matrix from the objects:
  data <- x$get()
  
  #Calculating the inverse using matrix multiplication 
  m <- solve(data) %*% data
  
  # Set the inverse to the object
  x$setInverse(m)
  
  # Returns the matrix:
  m
}
