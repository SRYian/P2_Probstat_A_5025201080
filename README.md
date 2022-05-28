# P2_Probstat_A_5025201080

Praktikum Probstat 2

# SOAL 1

![No1a](https://user-images.githubusercontent.com/92420947/170842636-e5df226a-2a58-4700-a350-fc74ca3135b3.jpg)

- 1a. Mencari standar deviasi dengan fungsi sd()

  ![No1b](https://user-images.githubusercontent.com/92420947/170842637-21481ad0-6491-4e9a-8d66-d778e854eaea.jpg)

- 1b. Melakukan pencarian nilai t dengan t.test(), dilakukan two
  sided karena hipotesis yang dinyatakan merupakan pengaruh

- 1c. Dari output yang dihasilkan, diperoleh nilai
  t=7.6316, df(degree of freedom) = 8, p-value = 6.121e-05
  Dari hasil yang didapatkan, hipotesis awal ditolak dan
  disimpulkan bahwa terdapat cukup bukti bahwa ada
  pengaruh yang signifikan secara statistika dalam hal kadar saturasi
  oksigen , sebelum dan sesudah melakukan aktivitas <U+0001D434>

# SOAL 2

![No2a](https://user-images.githubusercontent.com/92420947/170842638-fda3269b-b1cd-49f8-be63-ea0c29396804.jpg)
Melakukan set seed untuk menetapakan hasil yang terus sama, selanjutnya data distribusi normal yang sesuai digenerate dengan menggunakan fungsi rnorm(). Akhirnya dilakukan t test dengan alternative less untuk menunjukan alternatif hipotesis kurang dari.

- 2a. Saya setuju dengan claim tersebut

- 2b. Dari output yang dihasilkan, diperolehbeberapa
  nilai t = 9.6117, df(degrees of freedom) = 99, p-value = 1. Setelah itu, juga didaparkan hipotesis alternatif bahwa mean asli
  kurang dari 20000. Dengan 95% confidence interval kemudian dapat yakin
  bahwa interval rata-rata jarak adalah -infinity sampai 24096.2.
  Rata-rata mobil dikemudikan adalah 23492.82

- 2c. Dari hasil yang didapatkan, dapat disimpulkan bahwa
  mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tah

# SOAL 3

- 3a.
  H0 = Perbedaan sesungguhnya mean saham pada Bandung dan Bali sama dengan 0
  H1 = Perbedaan sesungguhnya mean saham pada Bandung dan Bali tidak sama dengan 0

  ![No3b](https://user-images.githubusercontent.com/92420947/170842640-cac18f6c-5520-4ec6-af45-e83515fbcb9d.jpg)

- 3b. Dilakukan set seed untuk menetapkan seed, kemudian
  data yang sesuai dimasukan ke fungsi rnorm dan diassign ke variabel

  ![No3c](https://user-images.githubusercontent.com/92420947/170842641-a16e248f-0650-4003-8d34-ceba08c9d517.jpg)

- 3c. Dilakukan t test dengan opsi two sided dan var equal karena varians dianyatakan sama

  ![No3d](https://user-images.githubusercontent.com/92420947/170842642-1c92926e-e47b-44ab-88cc-86d2677af091.jpg)

- 3d. Dilakukan perhitungan nilai kritikal

- 3e. Menerima H0

- 3f. Dari hasil yang didapatkan, dapat terlihat bahwa p-value = 0.315 dan Significant level 0.05
  Dengan itu, H0 H0 diterima dan dinyatakan bahwa
  Perbedaan sesungguhnya mean saham pada Bandung dan Bali sama dengan 0

# SOAL 4

![No4a1](https://user-images.githubusercontent.com/92420947/170842644-55cb4b28-5f1b-41d9-bd68-243ce83d657d.jpg)
![No4a2](https://user-images.githubusercontent.com/92420947/170842645-1398c771-4f2a-4f81-b5db-90d876b4fe34.jpg)
![No4a3](https://user-images.githubusercontent.com/92420947/170842647-73a957a9-b8df-4e80-b2cd-675972fd4b75.jpg)

- 4a. Data diimport lewat fungsi read.table(), kemudian dilakukan grouping dan labelling menggunakan fungsi factor(). Selanjutnya, data dibagi menjadi 3 grup(Grup1, Grup2, Grup3). Akhirnya data divisualisasikan dengan menggunakan ggplot().

![No4b](https://user-images.githubusercontent.com/92420947/170842648-61adcfb1-4a3a-40c9-9a7f-ff27179d63e4.jpg)

- 4b. Dilakukan pemeriksaan Homogeneity of variances menggunakan fungsi bartlett.test()
  H0 = Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama
  H1 = Ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama
  nilai p = 0.8054
  Dari hasil nilai P yang didapatkan, dapat disimpulkan bahwa hipotesis yang diterima
  adalah H0 karena p value lebih besar dari significant level

  ![No4c](https://user-images.githubusercontent.com/92420947/170842650-7aee99ca-9118-4f97-af45-6a50d8231e46.jpg)

- 4c. Dilakukan perhitungan anova dengan pertama menghitung linear hipothesis yang dilanjutkan dengan fungsi anova()

- 4d. nilai p = 0.0013 # Dari hasil nilai P yang didapatkan, dapat disimpulkan bahwa hipotesis yang diterima
  adalah H1 karena p value lebih kecil dari significant level

  ![No4e](https://user-images.githubusercontent.com/92420947/170842652-1abdb559-44d3-4f46-a581-83e9e5e9b362.jpg)

- 4e. Jawaban model diverifikasi menggunakan fungsi TukeyHSD()
  Iya, didapatkan satu jenis kucing lebih panjang dari yang lain

  ![No4f](https://user-images.githubusercontent.com/92420947/170842653-0729d23a-f0bf-4ca0-8cab-6d0eb240a537.jpg)

- 4f. Dialkukan visualisasi dengan ggplot

# SOAL 5

![No5a](https://user-images.githubusercontent.com/92420947/170842654-0d40f0a6-4c76-4ad2-bbf0-19667625766e.jpg)

- 5a. Data disiapkan menggunakan fungsi read.csv dan dilakukan albeling dnegan fungsi factor(). khirnya, data divisualisasi dengan ggboxplot dan ggline.

![No5b](https://user-images.githubusercontent.com/92420947/170842655-293b97f0-4507-438f-8a4a-06bea4eacdd1.jpg)

- 5b. Dilakukan uji anova tow way dnegan fungsi aov() dan summary

![No5c](https://user-images.githubusercontent.com/92420947/170842657-9af711dc-ed3f-4264-9f40-82f9a652519d.jpg)

- 5c. Untuk mendapatkan tabel dengan mean dan standar deviasi keluaran cahaya dijalankan fungsi group by untuk Light dan Temp.

![No5d](https://user-images.githubusercontent.com/92420947/170842658-7b910fff-e864-4b8c-b610-e677e5d2a65f.jpg)

- 5d. Uji Tukey dilakukand dengan memanggil fungsi TukeyHSD

![No5e](https://user-images.githubusercontent.com/92420947/170842660-a8f3909a-4acc-4707-ad2b-5e71474cc512.jpg)

- 5e. Untuk mendapatkan compact letter display untuk Tukey dan anova dijalankan fungsi glht(general linear hypotheses) dengan mcp class Tukey. Kemudian fungsi distore kedalam variabel yang menjadi argumen funsgi cld() untuk compact letter dispaly
