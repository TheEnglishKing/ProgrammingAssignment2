## Short program to cahce matrix inverse

#
makeCacheMatrix <- function(x = matrix()) {

    # our inverse matrix
    inverseMat <- NULL
    
    #set a new matrix, set inverse matric as null
    set <- function(y){
      x <<- y
      inverseMat <<- NULL
      
    }
    
    #solves the matrix
    setmatrix <- function (x){
      inverseMat <<- solve(x)
      }
    
    #retrieve matrix
    get <- function() x
    
    #retrieve inverse matrix
    getmatrix <- function() inverseMat
    
    list (set = set, get = get,
          setmatrix = setmatrix,
          getmatrix = getmatrix
          )
    
}

## function to solve the inverse of the matrix

cacheSolve <- function(x, ...) {
  
  #set inversematrix
  inverseMatrix <- x$getmatrix()
  
  #check to see if is not null, then return the new matrix
  if(!is.null(inverseMatrix)){
    print("The matrix has been solved before!")
    return(inverseMatrix)
  }
  
  #calculate inverse + set new inverse
  data <- x$get()
  solvedm <- solve(data, ...)
  x$setmatrix(solvedm)
  solvedm

}

