# P1_Probstat_A_5025201049

Nama  : Doanda Dresta Rahma\
NRP   : 5025201049\
Kelas : Probabilitas dan Statistika A

# Soal 1
Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan
seseorang yang menghadiri acara vaksinasi sebelumnya.
## 1a
a. Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi
sebelum keberhasilan pertama ketika p = 0,20 dari populasi menghadiri acara vaksinasi ?
(distribusi Geometrik)
```r
# 1a
dgeom(x=3, prob=0.2)
```
dengan hasil 
<br>
![image](https://user-images.githubusercontent.com/66405353/162608146-a7a86210-dad7-42ea-8b84-8c68303b2cd7.png)
<br>

## 1b
b. mean Distribusi Geometrik dengan 10000 data random , prob = 0,20 dimana distribusi
geometrik acak tersebut X = 3 ( distribusi geometrik acak () == 3 )
```r
# 1b
# seed = 1
set.seed(1)
x = rgeom(n = 10000, prob = 0.2)
mean(x == 3)
```
dengan hasil
<br>
![image](https://user-images.githubusercontent.com/66405353/162608279-18ea0bba-23e4-4e8a-85b8-069335139ec8.png)
<br>

## 1c
c. Bandingkan Hasil poin a dan b , apa kesimpulan yang bisa didapatkan?
<br>
Hasil simulasi mendekati hasil nyata dengen kesalahan relatif yaitu (0.0993 - 0.1024) / 0.1024 * 100% = 3,03%
```r
# 1c
# Perbedaan dari hasil perhitungan poin a (0.1024) dan b (0.0993) tidak jauh, dengan hasil a bernilai tetap dan b hasil random generation.
```
## 1d
d. Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama
```r
#1d
x = 0:10
p = dgeom(x, prob=0.2)
plot(x, p, type="h", main="d.	Histogram Distribusi Geometrik , Peluang X = 3 gagal Sebelum Sukses Pertama")
text(x, p, labels=round(p, 4))
```
Didapatkan histogram dimana peluang x=3 gagal sebelum sukses pertama adalah 0.1024
<br>
<img width="683" alt="1d" src="https://user-images.githubusercontent.com/66405353/162608529-a0e97500-cbee-4874-bf35-5f9cfc70dfba.png">
<br>

## 1e
e. Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Geometrik.
<br>
![image](https://user-images.githubusercontent.com/66405353/162608603-2793c283-ae66-4852-bc52-4fe8d6094910.png)
<br>
```r
#1e
p = 0.2
rataan = 1/p
print(paste("Rataan : ", rataan))
varian = (1-p)/p^2
print(paste("Varian : ", varian))
```
<br>
![image](https://user-images.githubusercontent.com/66405353/162608647-224bdb4d-1401-4b51-a263-c3d1012ec029.png)
<br>


# Soal 2
Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
## 2a
a. Peluang terdapat 4 pasien yang sembuh.
```r
dbinom(x=4, size=20, prob=0.2)
```
<br>
![image](https://user-images.githubusercontent.com/66405353/162608990-f08bbdcf-c249-4fce-8897-9c74e6180f5f.png)
<br>

## 2b
b. Gambarkan grafik histogram berdasarkan kasus tersebut.
```r
# 2b
x = 0:20
p <- dbinom(x, size=20, prob=0.2)
data = data.frame(x=x, p=p)
barplot(height=data$p, names.arg=data$x, xlab="# Pasien sembuh", ylab="Peluang")
```
<br>
<img width="683" alt="2b" src="https://user-images.githubusercontent.com/66405353/162609021-1a0c0866-04a8-4939-8f9f-7c5d76452d2c.png">
<br>

## 2c
c. Nilai Rataan (μ) dan Varian ( ) dari σ² Distribusi Binomial.## 2a
```r
n = 20
p = 0.2
q = 1-p
rataan = n*p
print(paste("Rataan : ", rataan))
varian = n*p*q
print(paste("Varian : ", varian))
```
<br>
![image](https://user-images.githubusercontent.com/66405353/162609052-40e7cf36-904d-4133-a4e8-0ca4d32ba93b.png)
<br>
![image](https://user-images.githubusercontent.com/66405353/162609079-d38191ad-4a42-48b0-b54f-4da019583833.png)
<br>


# Soal 3
Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis
4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)
## 3a
a. Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
```r
# 3a
dpois(x=6, lambda = 4.5)
```
![image](https://user-images.githubusercontent.com/66405353/162609230-af140a08-8aac-42a8-9512-a458ea58f198.png)
## 3b
b. simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama
setahun (n = 365)
```r
# 3b
# seed = 1
set.seed(1)
x <- rpois(n=365, lambda=4.5)
data.frame(table(x))
data = data.frame(table(x))
barplot(height=data$Freq, names.arg=data$x, xlab="Bayi lahir", ylab="Frekuensi (Hari)")
bp <- barplot(height=data$Freq, names.arg=data$x, xlab="Bayi lahir", ylab="Frekuensi (Hari)")
text(bp, data$Freq, labels=data$Freq)
```
<br>
<img width="683" alt="3b" src="https://user-images.githubusercontent.com/66405353/162609263-bf8ec924-809e-460e-bebb-68664449f3e2.png">
<br>

## 3c
c. dan bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan
```r
# 3c
mean(x == 6)
```
<br>
![image](https://user-images.githubusercontent.com/66405353/162609313-28842fc3-9c91-4a3b-89bf-2e2c339cdb3e.png)
<br>
Hasil pada poin a adalah eksak/tetap (p = 0.1281201), sedangkan pada poin b dapat 
dilihat di histogram, dari simulasi random generation 365 hari (seed = 1), 
frekuensi bayi lahir berjumlah 6 adalah 45 hari, dengan peluang 45/365 = 0.1232877. 
Dapat disimpulkan bahwa peluang dari simulasi mendekati nilai eksak, tidak ada perbedaan jauh.\
Kesalahan relatif = (0.1232877 - 0.1281201) / 0.1281201 * 100% = 3.77%


## 3d
d. Nilai Rataan (μ) dan Varian ( σ² ) dari Distribusi Poisson.
```r
# 3d
lambda = 4.5
rataan = lambda
print(paste("Rataan : ", rataan))
varian = lambda
print(paste("Varian : ", varian))
```
![3pois](https://user-images.githubusercontent.com/66405353/162609854-f32497cb-1bf2-4b17-b0ba-0afdf9c18185.png)
<br>
![image](https://user-images.githubusercontent.com/66405353/162609842-db1c2bbd-8e45-490f-894a-008215bb2af8.png)


# Soal 4
Diketahui nilai x = 2 dan v = 10. Tentukan:
## 4a
a. Fungsi Probabilitas dari Distribusi Chi-Square.
```r
# 4a
dchisq(x = 2, df = 10)
```
![image](https://user-images.githubusercontent.com/66405353/162609912-fecadea4-3301-4718-b61d-bf889ad1a5d3.png)

## 4b
b. Histogram dari Distribusi Chi-Square dengan 100 data random.
```r
# 4b
x <- rchisq(100, 10)
hist(x, main="Histogram Distribusi Chi-Square (n=100, v=10)")
```
<img width="683" alt="4b" src="https://user-images.githubusercontent.com/66405353/162609882-9df78585-c082-49cc-9a1b-a97c604d8e6e.png">

## 4c
c. Nilai Rataan (μ) dan Varian ( σ² ) dari Distribusi Chi-Square.
```r
# 4c
v = 10
rataan = v
print(paste("Rataan : ", rataan))
varian = 2*v
print(paste("Varian : ", varian))
```
![image](https://user-images.githubusercontent.com/66405353/162609900-cb0d8259-ca4a-4ee1-91f9-6cbd1ea2e0de.png)


# Soal 5
Diketahui bilangan acak (random variable) berdistribusi exponential (λ = 3). Tentukan
## 5a
a. Fungsi Probabilitas dari Distribusi Exponensial
```r
# 5a
set.seed(1)
rexp(3)
```
![image](https://user-images.githubusercontent.com/66405353/162609953-36af1a0b-55a8-43f2-815d-7d5b9092b083.png)

## 5b
b. Histogram dari Distribusi Exponensial untuk 10, 100, 1000 dan 10000 bilangan random
```r
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
```
<img width="683" alt="5b1" src="https://user-images.githubusercontent.com/66405353/162609989-a4cd7cb0-597b-46b5-8c41-e082555c2c84.png">
<br>
<img width="683" alt="5b2" src="https://user-images.githubusercontent.com/66405353/162609994-2a2870c4-ec6b-4881-a5bc-04aeec59a19d.png">
<br>
<img width="683" alt="5b3" src="https://user-images.githubusercontent.com/66405353/162609998-77c0451a-2e23-4983-bc29-721afb2f3c6d.png">
<br>
<img width="683" alt="5b4" src="https://user-images.githubusercontent.com/66405353/162610002-60c19c14-3cd3-423d-9e96-632466d31b10.png">

## 5c
c. Nilai Rataan (μ) dan Varian ( σ² ) dari Distribusi Exponensial untuk n = 100 dan λ = 3\
Petunjuk:\
● Gunakan set.seed(1)\
● Gunakan fungsi bawaan R
```r
# 5c
lambda = 3
rataan = 1/lambda
print(paste("Rataan : ", rataan))
varian = 1/lambda^2
print(paste("Varian : ", varian))
```
![image](https://user-images.githubusercontent.com/66405353/162610037-a6d2394e-001f-4c2f-ab0d-c41b8a09897d.png)


# Soal 6
Diketahui generate random nilai sebanyak 100 data, mean = 50, sd = 8. Tentukan
## 6a
a. Fungsi Probabilitas dari Distribusi Normal P(X1 ≤ x ≤ X2), hitung Z-Score Nya dan plot
data generate randomnya dalam bentuk grafik. Petunjuk(gunakan fungsi plot()).\
Keterangan :\
X1 = Dibawah rata-rata\
X2 = Diatas rata-rata\
Contoh data :\
11\
1,2,4,2,6,3,10,11,5,3,6,8\
rata-rata = 5.083333\
X1 = 5\
X2 = 6\
```r
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
```
![image](https://user-images.githubusercontent.com/66405353/162610647-6ef55a1c-e40f-4232-8198-5f1676772718.png)
<br>
<img width="683" alt="6line" src="https://user-images.githubusercontent.com/66405353/162610654-b42d98e1-2b08-4353-bf81-e6939b8e2b4e.png">
<br>
<img width="683" alt="6hist" src="https://user-images.githubusercontent.com/66405353/162610659-1e754367-72d8-496c-9a8c-cf6e295baefa.png">

## 6b
b. Generate Histogram dari Distribusi Normal dengan breaks 50 dan format penamaan:\
NRP_Nama_Probstat_{Nama Kelas}_DNhistogram\
Contoh :\
312312312_Rola_Probstat_A_DNhistogram\
```r
# 6b
hist(x, breaks = 50, main="5025201049_Doanda Dresta Rahma_Probstat_A_DNhistogram")
```
<img width="683" alt="6b" src="https://user-images.githubusercontent.com/66405353/162610541-54199559-da3a-472a-b74e-7f4156a67582.png">

## 6c
c. Nilai Varian ( ) dari hasil generate random nilai σ² Distribusi Normal.
```r
# 6c
varian = sd^2
print(paste("Varian : ", varian))
```
![image](https://user-images.githubusercontent.com/66405353/162610530-36ca6a8b-fc59-4321-b167-6b32a2cf1a15.png)
