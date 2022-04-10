# 1a
dgeom(x=3, prob=0.2)

# 1b
# seed = 1
set.seed(1)
x = rgeom(n = 10000, prob = 0.2)
mean(x == 3)

# 1c
# Perbedaan dari hasil perhitungan poin a (0.1024) dan b (0.0993) tidak jauh, dengan hasil a bernilai tetap dan b hasil random generation.

#1d
x = 0:10
p = dgeom(x, prob=0.2)
plot(x, p, type="h", main="d.	Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama")
text(x, p, labels=round(p, 4))

#1e
p = 0.2
rataan = 1/p
print(paste("Rataan : ", rataan))
varian = (1-p)/p^2
print(paste("Varian : ", varian))

