# Modul2_Probstat_5025211219
Praktikum Probabilitas dan Statistik 2

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

> a. Apakah Anda setuju dengan klaim tersebut?

> b. Jelaskan maksud dari output yang dihasilkan!

> c. Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!


## Soal No. 3 Hipotesa 2 Sampel
> Diketahui perusahaan memiliki seorang data analyst ingin memecahkan permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya didapatkanlah data berikut dari perusahaan saham tersebut.

| Nama Kota/Atribut        | Bandung  | Bali  |
| ---                      | ---      | ---   |
| Jumlah Saham             | 19       |27     |
| Sampel Mean              | 3.64     |2.79   |
| Samoel Standar Deviasi   | 1.67     |1.32   |

> Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada rata-ratanya (α= 0.05)? Buatlah:

> a. H0 dan H1(3)

> b. Hitung Sampel Statistik(3)

> c. Lakukan uji statistik (df = 2) (5)

> d. Nilai Kritikal (3)

> e. Keputusan(3)

> f. Kesimpulan(3)

## Soal No. 4 Anova 1 Arah
> Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya ia mengumpulkan data  tiga spesies kucing yaitu kucing oren, kucing hitam dan kucing putih dengan panjangnya masing-masing. 
Jika : diketahui dataset  https://intip.in/datasetprobstat1 
H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama    
Maka Kerjakan atau Carilah:

> a. Buatlah masing masing jenis spesies menjadi  3 subjek "Grup" (grup 1,grup 2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan lihat apakah ada outlier utama dalam homogenitas varians.

> b. carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?

> c. Untuk uji ANOVA (satu arah), buatlah model linier dengan panjang versus grup dan beri nama model tersebut model 1.

> d. Dari hasil poin C, berapakah nilai p? Apa yang dapat Anda simpulkan dari H0?

> e. Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain? Jelaskan.

> f. Visualisasikan data dengan ggplot2

## Soal No. 5 Anova 2 Arah
> Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan dilakukan sebanyak 27 kali dan didapat data sebagai berikut: Data Hasil Eksperimen. Dengan data tersebut: 

> a. Buatlah plot sederhana untuk visualisasi data 

> b. Lakukan uji ANOVA dua arah untuk 2 faktor

> c. Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)

> d. Lakukan uji Tukey

> e. Gunakan compact letter display untuk menunjukkan perbedaan signifikan antara uji Anova dan uji Tukey







