## The pair of function defined below executes the matrix inverse operation. Through the usage of lexical scoping and 
## concept of cache variables, repetitive calculation is avoided when inverse of same matrix is being calculated

## The first function accepts a matrix, stores a copy of the input matrix, and returns a function which calculate inverse ##the inverse and also store it in cache

makeCacheMatrix <- function(x = matrix()) {

	inv <- NULL
	z <- NULL
	set_inv <- function(y)	{
		z <<- y
		inv <<- solve(y)
		inv
	}
	set_inv

}


## The second function accepts the output of the first function, first check what is the matrix for which it has previously ##calculated the inverse. If the cached inv variable is not null and if the matrix has not changed, then inverse value in ##the cache is returned, else the inverse is computed fresh. 

cacheSolve <- function(r, ...) {
        
	inv_prev <- get("inv",environment(r))
	x_prev <- get("z",environment(r))
	x_prst <- get("x",environment(r))
	
	if(!is.null(inv_prev) && (x_prev == x_prst))	{	
		message("getting cached data")
		return(inv_prev)
		}

	r(x_prst)
}
