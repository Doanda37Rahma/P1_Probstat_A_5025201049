# 6a
set.seed(1)
x <- rnorm(n=100, mean=50, sd=8)
m = mean(x)
sd = 8

x1 <- floor(m)
x2 <- ceiling(m)

#hitung Z-Score
z1 = (x1 - m) / sd
z2 = (x2 - m) / sd

#P(X1 <= x <= X2)
p = pnorm(q=z2) - pnorm(q=z1)
print(paste("P(X1 <= x <= X2); X1 = ", x1, "X2 = ", x2))
print(paste("P(",x1," <= x <= ",x2,") = ", p))

#plot data generate randomnya (line, histogram)
plot(x, type="l")
plot(x, type="h")

# 6b
hist(x, breaks = 50, main="5025201049_Doanda Dresta Rahma_Probstat_A_DNhistogram")

# 6c
varian = sd^2
print(paste("Varian : ", varian))
