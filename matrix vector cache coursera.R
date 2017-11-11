makeVector <- function(x = numeric()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setmean <- function(mean) m <<- mean
  getmean <- function()m
  list(set = set, get = get,
       setmean = setmean,
       getmean = getmean)
}
x <- c(7,8,9,10)
x
result.mean <-mean(x)
print(result.mean)

x
result.mean <-mean(x)
print(result.mean)
cachemean <- function(x, ...) {
  m <- x$getmean()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- mean(data, ...)
  x$setmean(m)
  m
}
makeCacheMatrix <- function(x = matrix()) 
  cacheSolve <- function(x, ...) 
m <- matrix(7:10,nrow=2,ncol=2)
m
solve(m)
