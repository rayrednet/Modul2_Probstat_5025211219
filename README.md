# Modul2_Probstat_5025211219
Praktikum Probabilitas dan Statistik 2

## Notes
Jika screenshot kurang jelas, klik image screenshot agar terlihat lebih jelas

## Identitas
| Name           | NRP        | Kelas     |
| ---            | ---        | ----------|
| Rayssa Ravelia | 5025211219 |Probstat A |


## Soal No. 1
> Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴.
 
| Responden  | X   | Y  |
| ---        | --- | ---|
| 1          | 78  |100 |
| 2          | 75  |95  |
| 3          | 67  |70  |
| 4          | 77  |90  |
| 5          | 70  |90  |
| 6          | 72  |90  |
| 7          | 78  |89  |
| 8          | 74  |90  |
| 9          | 77  |100 |


> Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen  dari responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah melakukan aktivitas 𝐴 sebanyak 70.

Langkah pertama yang harus dilakukan adalah `memasukkan data` dari 9 responden `sesuai dengan kelompoknya`
```Ruby
x <- c(78,75,67,77,70,72,78,74,77)
y <- c(100,95,70,90,90,90,89,90,100)
```

> a. Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel diatas

Untuk mencari standar deviasi dari data selisih pasangan kita harus mencari `selisih antar data` yang memiliki indeks yang sama. Selanjutnya dicari `rata-rata` dari selisih sebagai standar deviasinya

```Ruby
sd(x-y)
```

Hasil dokumentasi:

<img width="176" alt="image" src="https://user-images.githubusercontent.com/89933907/207131770-7d375d2b-e92f-461a-826a-25354f3a2a04.png">

Maka standar deviasi dari data selisih pasangan pengamatan tabel di atas adalah `6.359595`

> b. Carilah nilai t (p-value).

Untuk mencari nilai t kita dapat menggunakan bantuan fungsi `t.test()` sebagai berikut:
```Ruby
t.test(y, x, paired = TRUE)
```

Hasil dokumentasi:

<img width="269" alt="image" src="https://user-images.githubusercontent.com/89933907/207133520-fca382e2-9fe7-4ab8-9f83-66a3176527e0.png">

Maka nilai t adalah `7.6525` dengan df `8` dan p-value sebesar `6.003e-05`

> c. Tentukanlah apakah terdapat pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”

Berdasarkan 1b diperoleh nilai probabilitas `6.003e-05` yang dimana nilai tersebut lebih kecil dibandingkan dengan tingkat signifikansi 𝛼 = 5% = 0.05 sehingga `H0 ditolak dan H1 diterima`. Jadi dapat disimpulkan bahwa terdapat pengaruh signifikan pada kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas A pada 𝛼 = 5%.

## Soal No. 2 Hipotesa 1 Sampel
> Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata 23.500 kilometer dan standar deviasi 3900 kilometer. (Kerjakan menggunakan 2 library seperti referensi pada modul).

Dari soal tersebut dapat dibuat klaim H0 dan H1 sebagai berikut:

 ```Ruby
H0 : µ ≤ 20.000 km
H1 : µ > 20.000 km
```

> a. Apakah Anda setuju dengan klaim tersebut?

Saya `setuju` dengan klaim tersebut sebab berdasarkan sampel acak rata-rata mobil dikemudikan 23.500 kilometer dan standar deviasi  39000 kilometer sehingga hal ini mendukung klaim yang mengatakan bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun. 

> b. Jelaskan maksud dari output yang dihasilkan!

Pada soal ini kita memerlukan library BDSA untuk mendapatkan maksud dari output yang dihasilkan

```Ruby
install.packages("BSDA")
library(BSDA)
```

Kemudian kita hitung menggunakan uji Z satu sample sebab n > 30. Uji z ini dapat digunakan dengan fungsi `zsum.test()` 

```Ruby
xbar = 23500
sd = 3900
n = 100
mu = 20000
zsum.test(xbar, sd, n, alternative = "greater", mu = 20000)
```

Hasil output:

<img width="308" alt="image" src="https://user-images.githubusercontent.com/89933907/207354869-d5e1057a-2a2f-4e9b-bb1f-8419f8ada585.png">

Dari hasil tersebut dapat disimpulkan rata-rata bahwa `H1 benar` karena mean lebih besar dari 20000, dengan 95% confidence interval rata-rata jarak mobil per tahunnya adalah `22.858,51` dengan `z = 8.9744` dan `p-value < 2.2 e-16`

> c. Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!

Dari hasil 2b diperoleh nilai `p-value < 2.2e-16` yang lebih kecil dari significant level `𝛼 = 0.05`. Jadi dapat disimpulkan bahwa `H0 ditolak dan H1 diterima` dengan rata-rata jarak tempuh mobil lebih dari 20.000 km/tahun

## Soal No. 3 Hipotesa 2 Sampel
> Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.

| Nama Kota/Atribut        | Bandung  | Bali  |
| ---                      | ---      | ---   |
| Jumlah Saham             | 19       |27     |
| Sampel Mean              | 3.64     |2.79   |
| Samoel Standar Deviasi   | 1.67     |1.32   |

> Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)? Buatlah:

> a. H0 dan H1(3)

Dari soal tersebut dapat dibuat klaim H0 dan H1 sebagai berikut:

```Ruby
H0 : µ1 = µ2 
```
Klaim `H0` berarti rata-rata saham Bandung `sama` dengan Bali

```Ruby
H0 : µ1 ≠ µ2 
```
Klaim `H1` rata-rata saham Bandung `tidak sama` dengan Bali


> b. Hitung Sampel Statistik(3)

Perhitungan sampel statistik dilakukan dengan bantuan fungsi `tsum.test()`

```Ruby
xbar1 = 3.64
s1 = 1.67
n1 = 19
xbar2 = 2.79
s2 = 1.32
n2 = 27

tsum.test(xbar1, s1, n1, xbar2, s2, n2, alternative = "greater", var.equal = TRUE)
```

Diperoleh hasil output:

<img width="369" alt="image" src="https://user-images.githubusercontent.com/89933907/207359946-ac58496d-c7c2-464d-bcfc-f2dee0dfb68f.png">

Maka diperoleh nilai `t = 1.9267`, `df = 44`, dan `p-value = 0.03024` dengan H1 benar karena nilai mean lebih besar dari 0.

> c. Lakukan uji statistik (df = 2) (5)

Kita memerlukan package `library(mosaic)` untuk melakukan uji statistik ini

```Ruby
install.packages("mosaic")
library(mosaic)
```

Untuk melakukan uji statistik gunakan fungsi `plotDist()` sebagai visualisasi uji statistik dengan `df = 2`

```Ruby
df = 2
plotDist(dist = 't', df, col = "blue")
```

Diperoleh hasil sebagai berikut:

![image](https://user-images.githubusercontent.com/89933907/207362804-f354acd7-2c85-4254-a0d8-fbff546c4acc.png)


> d. Nilai Kritikal (3)

Nilai kritikal dihitung dengan menggunakan fungsi `qchisq()` dengan `df = 2`

```Ruby
df = 2
qchisq(p = 0.05, df, lower.tail = FALSE)
```

Diperoleh hasil output:

<img width="216" alt="image" src="https://user-images.githubusercontent.com/89933907/207363624-acdedabf-b82a-4dea-82cf-37743ce22cfb.png">

Maka nilai kritikalnya adalah `5.991465`

> e. Keputusan(3)

Pada 3b diperoleh `p-value = 0.03024` yang lebih kecil daripada `𝛼 = 0.05`. Maka `H0 ditolak` dan `H1 diterima`

> f. Kesimpulan(3)

Dari hasil-hasil yang diperoleh dapat disimpulkan bahwa `terdapat perbedaan` antara `rata-rata saham` di `Bandung` dan rata-rata saham di `Bali` (rata-rata saham Bandung tidak sama dengan Bali)

## Soal No. 4 Anova 1 Arah
> Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya ia mengumpulkan data  tiga spesies kucing yaitu kucing oren, kucing hitam dan kucing putih dengan panjangnya masing-masing. 
Jika : diketahui dataset  https://intip.in/datasetprobstat1 
H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama    
Maka Kerjakan atau Carilah:

> a. Buatlah masing masing jenis spesies menjadi  3 subjek "Grup" (grup 1,grup 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.

Kita gunakan bantuan fungsi `read.table()` untuk memasukan dataset yang diberikan

Kita harus mengarahkan `direktori file` hasil download tersebut ke dalam R Studio

```Ruby
oneWayAnova = read.table(file = "C:/Users/rayss/Downloads/onewayanova.txt", header = TRUE) 
attach(oneWayAnova)
names(oneWayAnova)
```

Diperoleh output:

<img width="388" alt="image" src="https://user-images.githubusercontent.com/89933907/207374408-49fc84c5-d261-4c8e-b01a-a4c37b624a4d.png">


Kemudian untuk membagi kelompok menjadi `3 bagian` (Group 1 adalah kucing oren, Group 2 adalah kucing hitam, dan Group 3 adalah kucing putih), kita gunakan `factor` untuk membuat group dan memberikan label setiap group sebab data berdistribusi normal dan tidak ditemukan outlier utama.

```Ruby
oneWayAnova$Group <- as.factor(oneWayAnova$Group)
oneWayAnova$Group = factor(oneWayAnova$Group, labels = c("Kucing Oren", "Kucing Hitam", "Kucing Putih"))

class(oneWayAnova$Group)

Group1 <- subset(oneWayAnova, Group == "Kucing Oren")
Group2 <- subset(oneWayAnova, Group == "Kucing Hitam")
Group3 <- subset(oneWayAnova, Group == "Kucing Putih")
```

Selanjutnya, gambar plot kuantil normal untuk melihat distribusi data dan outlier utama dalam masing-masing group. Gunakan bantuan fungsi `qnorm()` dan `qqline()`

Group 1
```Ruby
qqnorm(Group1$Length)
qqline(Group1$Length)
```
Diperoleh hasil:

![image](https://user-images.githubusercontent.com/89933907/207376401-0b3e15d5-2a64-4763-91c9-d4decc0f5328.png)

Group 2
```Ruby
qqnorm(Group2$Length)
qqline(Group2$Length)
```
Diperoleh hasil:

![image](https://user-images.githubusercontent.com/89933907/207376583-34852cee-7baf-49f7-924f-84563defa818.png)

Group 3
```Ruby
qqnorm(Group3$Length)
qqline(Group3$Length)
```
Diperoleh hasil:

![image](https://user-images.githubusercontent.com/89933907/207376763-55b1ece0-fb2c-401e-8db3-b87a6b43c9c5.png)


> b. carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?

Untuk menghitung homogenity of variances gunakan fungsi `bartlett.test()` pada dataset soal

```Ruby
bartlett.test(Length~Group, data = oneWayAnova)
```

Diperoleh hasil:

<img width="249" alt="image" src="https://user-images.githubusercontent.com/89933907/207377835-76aba62e-67d0-4414-9cd3-97c338fc3031.png">

Jadi nilai `p-value adalah 0.8054` yang dimana lebih besar dari 𝛼 = 0.05 sehingga membuktikan bahwa variance sama.

> c. Untuk uji ANOVA (satu arah), buatlah model linier dengan panjang versus grup dan beri nama model tersebut model 1.

Pada soal ini kita buat variable `model1` yang berisi fungsi `lm()` kemudian kita masukkan variable `model1` ke dalam fungsi `anova()` untuk membuat model linear dan melakukan uji anova

```Ruby
model1 = lm(Length~Group, data = oneWayAnova)
anova(model1)
```

Diperoleh hasil:

<img width="285" alt="image" src="https://user-images.githubusercontent.com/89933907/207379262-bc85325e-6930-484b-9db0-df1a5a6bea6b.png">


> d. Dari hasil poin C, berapakah nilai p? Apa yang dapat Anda simpulkan dari H0?

Dari 4c diperoleh nilai `p-value = 0.0013` yang dimana nilainya lebih kecil dari 𝛼 = 0.05 dan `F-value = 7.0982`. Maka, `H0 ditolak` dan disimpulkan bahwa terdapat perbedaan panjang antara ketiga spesies  atau rata-rata panjangnya sama.

> e. Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan.

Untuk melakukan verifikasi dengan Post-hoc test Tukey HSD untuk mengetahui perbandingan tiap spesies gunakan fungsi `TukeyHSD()`

```Ruby
TukeyHSD(aov(model1))
```
Diperoleh hasil:

<img width="308" alt="image" src="https://user-images.githubusercontent.com/89933907/207380707-b2482b2e-7109-4d1f-a53a-4d877b5ec027.png">

Dari hasil tersebut dapat dilihat p-value dari setiap group. Apabila `p-value < 0.05` maka panjang group akan `berbeda`, sementara jika `p-value >= 0.05` maka panjang group akan `sama`. Perbedaan panjang kucing yang signifikan adalah kucing hitam terhadap kucing oren dan kucing putih jika menggunakan 𝛼 = 5%.

> f. Visualisasikan data dengan ggplot2

Gunakan bantuan fungsi `ggplot()` untuk visualisasi data. Kita memerlukan library `ggplot2` pada soal ini

```Ruby
install.packages("ggplot2")
library("ggplot2")

ggplot(oneWayAnova, aes(x = Group, y = Length)) +
  geom_boxplot(fill = "white", color = c("#E7B800", "#000000", "#808080")) +
  scale_x_discrete() + xlab("Group") + ylab("Length (cm)")
```

Diperoleh hasil:

![image](https://user-images.githubusercontent.com/89933907/207384304-6414d9a4-09d9-4bf8-81ba-bdacf77fa160.png)


## Soal No. 5 Anova 2 Arah
> Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut:[Data Hasil Eksperimen](https://drive.google.com/file/d/1aLUOdw_LVJq6VQrQEkuQhZ8FW43FemTJ/view). Dengan data tersebut: 

Kita memerlukan library di bawah ini pada soal ini:

```Ruby
install.packages("multcompView")
library(readr)
library(ggplot2)
library(multcompView)
library(dplyr)
```

Kemudian kita masukkan data hasil eksperimen pada soal dengan fungsi `read_scv()` dan `head()`. Arahkan `direktori` file sesuai dengan direktori download kita.

```Ruby
GTL <- read.csv(file = "C:/Users/rayss/Downloads/GTL.csv")
head(GTL)
str(GTL)
```

Diperoleh hasil:

<img width="264" alt="image" src="https://user-images.githubusercontent.com/89933907/207386291-bcf703b7-c10b-4f9f-b831-451d7cb5c10a.png">

> a. Buatlah plot sederhana untuk visualisasi data 

Untuk membuat plot gunakan fungsi `qplot()` untuk membuat visualisasi data

```Ruby
qplot(x = Temp, y = Light, geom = "point", data = GTL) + facet_grid(.~Glass, labeller = label_both)
```

Diperoleh hasil:

![image](https://user-images.githubusercontent.com/89933907/207386692-aa986190-3dbf-4037-bd34-0d553b012eb0.png)


> b. Lakukan uji ANOVA dua arah untuk 2 faktor

Untuk membuat uji anova 2 arah kita harus membuat variable sebagai factor menggunakan fungsi `as.factor()`

```Ruby
GTL$Glass <- as.factor(GTL$Glass)
GTL$Temp_Factor <- as.factor(GTL$Temp)
str(GTL)
```

Diperoleh hasil:

<img width="325" alt="image" src="https://user-images.githubusercontent.com/89933907/207387399-548895ec-0328-45dd-a223-6d9b1695b20b.png">


Selanjutnya kita gunakan fungsi `summary(aov())` untuk melakukan analisis varians

```Ruby
anova <- aov(Light ~ Glass*Temp_Factor, data = GTL)
summary(anova)
```

Diperoleh hasil:

<img width="272" alt="image" src="https://user-images.githubusercontent.com/89933907/207387835-1f42272d-c079-4ebd-9253-1f30ee5580f2.png">


> c. Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)

Kita gunakan fungsi `group_by()` dan `summarise()` agar memperoleh ringkasan data sesuai dengan mean dan standar deviasinya

```Ruby
data_summary <- group_by(GTL, Glass, Temp) %>%
  summarise(mean = mean(Light), sd = sd(Light)) %>%
  arrange(desc(mean))
print(data_summary)
```

Diperoleh hasil:

<img width="411" alt="image" src="https://user-images.githubusercontent.com/89933907/207388866-7260f5bb-9364-4c12-a829-5896b14f024e.png">


> d. Lakukan uji Tukey

Untuk melakukan uji Tukey kita gunakan bantuan fungsi `TukeyHSD()`

```Ruby
tukey <- TukeyHSD(anova)
print(tukey)
```
Diperoleh hasil:

<img width="250" alt="image" src="https://user-images.githubusercontent.com/89933907/207389403-7227f555-d412-4e78-8835-134276aae1f8.png">


> e. Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey

Compact letter display dibuat dengan bantuan fungsi `multcompLetterS4()`

```Ruby
tukey.cld <- multcompLetters4(anova, tukey)
print(tukey.cld)
```

Diperoleh hasil:

<img width="243" alt="image" src="https://user-images.githubusercontent.com/89933907/207390463-fb14fb8f-e227-4a42-a644-bff18743bad0.png">


Kemudian kita tambahkan mean dan standar deviasi ke tabel compact letter display

```Ruby
cld <- as.data.frame.list(tukey.cld$`Glass:Temp_Factor`)
data_summary$Tukey <- cld$Letters
print(data_summary)
```

Diperoleh hasil:

<img width="250" alt="image" src="https://user-images.githubusercontent.com/89933907/207390917-b56b9161-5c77-4284-8b15-7feea6624de4.png">



