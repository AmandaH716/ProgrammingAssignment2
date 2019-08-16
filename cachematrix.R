## These functions create a 'matrix', a special object, caches it, and then takes the inverse of that object and caches it so that X(square invertible "matrix") can be put into Solve(X) to output the inverse of X


## this function makes the matrix and also caches it

makeCacheMatrix <- function(x = matrix()){
	solve<-NULL
	set function(cache){
		x<<-cache
		solve<-NULL
		}
		get function()x
		setmatrix<-function(matrix) solve<<-matrix
		getmatrix<-function() solve
		list(set = set, get = get,
		setmatrix = setmatrix,
		getmatrix = getmatrix)
		}


## this function takes the inverse of the function and caches it

cacheSolve <- function(x, ...) {
	solve<-x$getinverse()
	## Return a matrix that is the inverse of 'x'
	if(!is.null(solve)) {
		message("getting cached data")
		return(solve)
		}
		data <- x$get()
		solve <- inverse(matrix, ...)
		x$setinverse(solve)
		solve
}

