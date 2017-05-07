## A set of function to operate with matrices, and their inverted variants,
## with use of run-time cache, allowing to economy computation resources
## and time for taking inverted matrix multiple times.

## function, that creates list, containing matrix, and function to 
## operate with it.
makeCacheMatrix <- function(x = matrix()) {
    # cached inverted matrix variable
    inverted = NULL
    set = function(new_matrix){
        x = new_matrix
        inverted = NULL
    }
    get = function() {
        return(x)
    }
    set_inverted = function(new_inverted) {
        inverted <<- new_inverted
    }
    get_inverted = function() {
        return(inverted)
    }
    return(list(
        set = set, get = get, get_inverted = get_inverted, 
        set_inverted = set_inverted
    ))
}


## function, that returns inverted matrix of CacheMatrix object, passed in.
## If CacheMatrix has cached inverted
cacheSolve <- function(x, ...) {
    if (is.null(x$inverted))
    {
        inverted = solve(x$get())
        x$set_inverted(inverted)
    }
    return(x$get_inverted())
}


