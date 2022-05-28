# NOMOR 1
set.seed(1)
rv <- c(78, 75, 67, 77, 70, 73, 78, 74, 77)
rv2 <- c(100, 95, 70, 90, 90, 90, 89, 90, 100)
arr <- array(c(rv, rv2), dim = c(9, 9, 2))
x <- rv2 - rv
# a
sd(x)
# b
t.test(rv, rv2, PAIRED = TRUE, alternative = "two.sided")
t.test(x, alternative = "two.sided")

# c
# Dari output yang dihasilkan, diperoleh nilai
# t=7.6316, df(degree of freedom) = 8, p-value = 6.121e-05
# Dari hasil yang didapatkan, hipotesis awal ditolak dan
# disimpulkan bahwa  terdapat cukup bukti bahwa ada
# pengaruh yang signifikan secara statistika dalam hal kadar saturasi
# oksigen , sebelum dan sesudah melakukan aktivitas <U+0001D434>

# NOMOR 2
# n = 100
# sd = 3900
# mean = 23500
# H0=mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun
set.seed(2)
x2 <- rnorm(100, 23500, 3900)
t.test(x2, alternative = "less", mu = 20000)
# a
# Saya setuju dengan claim tersebut
# b
# Dari output yang dihasilkan, diperoleh beberapa nilai
# t = 9.6117, df(degrees of freedom) = 99, p-value = 1
# Setelah itu, juga didaparkan hipotesis alternatif bahwa mean asli
# kurang dari 20000. Dengan 95% confidence interval kemudian dapat yakin
# bahwa interval rata-rata jarak adalah  -infinity sampai 24096.2.
# Rata-rata mobil dikemudikan adalah 23492.82
# c
# Dari hasil yang didapatkan, dapat disimpulkan bahwa
# mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tah

# NOMOR 3
# a
# H0 = Perbedaan sesungguhnya mean saham pada Bandung dan Bali sama dengan 0
# H1 = Perbedaan sesungguhnya mean saham pada Bandung dan Bali tidak sama dengan 0
# b
set.seed(3)
sbandung <- rnorm(19, 3.64, 1.67)
sbali <- rnorm(27, 2.79, 1.32)
# c
t.test(sbandung, sbali, alternative = "two.sided", var.equal = TRUE)
# d nilai kritikal= -4.302653 dan 4.302653
qt(p = 0.05 / 2, df = 2, lower.tail = FALSE)
# e
# Menerima H0
# f
# Dari hasil yang didapatkan, dapat terlihat bahwa p-value = 0.315 dan Significant level 0.05
# Dengan itu, H0 H0 diterima dan dinyatakan bahwa
# Perbedaan sesungguhnya mean saham pada Bandung dan Bali sama dengan 0

# NOMOR 4


# install.packages("ggplot2")
# install.packages("ggplot2", dependencies = TRUE)
# a
library("ggplot2")
datakucing <- read.table("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt", h = T)
attach(datakucing)
names(datakucing)
datakucing$Group <- as.factor(datakucing$Group)
datakucing$Group <- factor(datakucing$Group, labels = c("grup1", "grup2", "grup3"))
datakucing


Grup1 <- subset(datakucing, Group == "grup1")
Grup2 <- subset(datakucing, Group == "grup2")
Grup3 <- subset(datakucing, Group == "grup3")

ggplot(data = Grup1, aes(sample = Length)) +
    geom_qq(color = "dark blue") +
    geom_qq_line(color = "orange") +
    labs(y = "Length")
geom_qq()
ggplot(data = Grup2, aes(sample = Length)) +
    geom_qq(color = "dark blue") +
    geom_qq_line(color = "#00ff37") +
    labs(y = "Length")
geom_qq()

ggplot(data = Grup3, aes(sample = Length)) +
    geom_qq(color = "dark blue") +
    geom_qq_line(color = "#ff00bf") +
    labs(y = "Length")
geom_qq()

# b
library("ggpubr")
bartlett.test(Length ~ Group, data = datakucing)
# H0 = Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama
# H1 = Ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya sama
# nilai p = 0.8054
# Dari hasil nilai P yang didapatkan, dapat disimpulkan bahwa hipotesis yang diterima
# adalah H0 karena p value lebih besar dari significant level

# c
model1 <- lm(Length ~ Group, data = datakucing)
model1
anova(model1)
summary(aov(Length ~ Group, data = datakucing))
# niali p = 0.0013 # Dari hasil nilai P yang didapatkan, dapat disimpulkan bahwa hipotesis yang diterima
# adalah H1 karena p value lebih kecil dari significant level

# e
TukeyHSD(aov(model1))
# Iya, didapatkan satu jenis kucing lebih panjang dari yang lain

# NOMOR 5
# a
install.packages("ggpubr", dependencies = TRUE)
library("ggplot2")
dataOP <- read.csv("https://drive.google.com/file/d/1aLUOdw_LVJq6VQrQEkuQhZ8FW43FemTJ/view")
dataOP <- read.csv("GTL.csv")
str(dataOP)
attach(dataOP)
names(dataOP)
str(dataOP)
dataOP$Glass <- factor(dataOP$Glass,
    labels = c("A", "B", "C")
)
table(dataOP$Glass, dataOP$Temp)
library("ggpubr")
ggboxplot(dataOP,
    x = "Light", y = "Temp", color = "blue",
    add = c("mean_se", "dotplot"),
    palette = c("#00AFBB", "#E7B800")
)
ggline(dataOP,
    x = "Light", y = "Temp", color = "blue",
    add = c("mean_se", "dotplot"),
    palette = c("#00AFBB", "#E7B800")
)
# b
two.way <- aov(Light ~ Temp + Glass, data = dataOP)
summary(two.way)

# c
install.packages("dplyr")
require("dplyr")
group_by(dataOP, Glass) %>%
    summarise(
        count = n(),
        meanL = mean(Light, na.rm = TRUE),
        sdL = sd(Light, na.rm = TRUE),
        meanT = mean(Temp, na.rm = TRUE),
        sdT = sd(Temp, na.rm = TRUE)
    )
group_by(dataOP, Glass) %>%
    summarise(
        count = n(),
        mean = mean(Temp, na.rm = TRUE),
        sd = sd(Temp, na.rm = TRUE)
    )

# d
TukeyHSD(two.way)

# e
install.packages("multcomp")
library("multcomp")
two.way
ph <- glht(two.way, linfct = mcp(Glass = "Tukey"))
ph
cld(ph)