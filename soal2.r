# 2a
dbinom(x=4, size=20, prob=0.2)

# 2b
x = 0:20
p <- dbinom(x, size=20, prob=0.2)
data = data.frame(x=x, p=p)
barplot(height=data$p, names.arg=data$x, xlab="# Pasien sembuh", ylab="Peluang")

# 2c
n = 20
p = 0.2
q = 1-p
rataan = n*p
print(paste("Rataan : ", rataan))
varian = n*p*q
print(paste("Varian : ", varian))


