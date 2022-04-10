# 5a
set.seed(1)
rexp(3)


# 5b
set.seed(1)
x <- rexp(10, rate=3)
hist(x, main="Histogram Distribusi Exponensial (n=10, lambda=3)")
set.seed(1)
x <- rexp(100, rate=3)
hist(x, main="Histogram Distribusi Exponensial (n=100, lambda=3)")
set.seed(1)
x <- rexp(1000, rate=3)
hist(x, main="Histogram Distribusi Exponensial (n=1000, lambda=3)")
set.seed(1)
x <- rexp(10000, rate=3)
hist(x, main="Histogram Distribusi Exponensial (n=10000, lambda=3)")

# 5c
lambda = 3
rataan = 1/lambda
print(paste("Rataan : ", rataan))
varian = 1/lambda^2
print(paste("Varian : ", varian))

