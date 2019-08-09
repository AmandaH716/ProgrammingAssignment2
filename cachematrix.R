## These functions create a 'matrix', a special object, caches it, and then takes the inverse of that object and caches it so that X(square invertible "matrix") can be put into Solve(X) to output the inverse of X


## this function makes the matrix and also caches it

makeCacheMatrix <- function(x = matrix()){
	m<-NULL
	set function(y){
		x<<-y
		m<<-NULL
		}
		get function()x
		setmatrix<-function(matrix) m<<-matrix
		getmatrix<-function() m
		list(set = set, get = get,
		setmatrix = setmatrix,
		getmatrix = getmatrix)
		}


## this function takes the inverse of the function and caches it

cacheSolve <- function(x, ...) {
	m<-x$getmatrix()
	## Return a matrix that is the inverse of 'x'
	if(!is.null(m)) {
		message("getting cached data")
		return(m)
		}
		data <- x$get()
		m <- matrix(data, ...)
		x$setmatrix(m)
		m
}

