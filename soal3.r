# 3a
dpois(x=6, lambda = 4.5)

# 3b
# seed = 1
set.seed(1)
x <- rpois(n=365, lambda=4.5)
data.frame(table(x))
data = data.frame(table(x))
barplot(height=data$Freq, names.arg=data$x, xlab="Bayi lahir", ylab="Frekuensi (Hari)")
bp <- barplot(height=data$Freq, names.arg=data$x, xlab="Bayi lahir", ylab="Frekuensi (Hari)")
text(bp, data$Freq, labels=data$Freq)

# 3c
mean(x == 6)
# Hasil pada poin a adalah eksak/tetap (p = 0.1281201), sedangkan pada poin b dapat 
# dilihat di histogram, dari simulasi random generation 365 hari (seed = 1), 
# frekuensi bayi lahir berjumlah 6 adalah 45 hari, dengan peluang 45/365 = 0.1232877
# Dapat disimpulkan bahwa peluang dari simulasi mendekati nilai eksak, tidak ada 
# perbedaan jauh

# 3d
lambda = 4.5
rataan = lambda
print(paste("Rataan : ", rataan))
varian = lambda
print(paste("Varian : ", varian))
