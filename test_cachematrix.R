
source("git/ProgrammingAssignment2/cachematrix.R", local=TRUE)

set.seed(1)

m = matrix(sample.int(49), nrow = 7, ncol = 7)
print(m)

mx = makeCacheMatrix(m)
print(mx$get())

t1 = Sys.time()

cs = cacheSolve(mx)
print(cs)

print(paste("First solve() time:", as.character(Sys.time() - t1)))
t1 = Sys.time()

cs = cacheSolve(mx)

print(paste("Second solve() time:", as.character(Sys.time() - t1)))
t1 = Sys.time()

cs = cacheSolve(mx)

print(paste("Third solve() time:", as.character(Sys.time() - t1)))
t1 = Sys.time()

cs = cacheSolve(mx)

print(paste("Fourth solve() time:", as.character(Sys.time() - t1)))
t1 = Sys.time()

cs = cacheSolve(mx)

print(paste("Fifth solve() time:", as.character(Sys.time() - t1)))
t1 = Sys.time()