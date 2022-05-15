setwd("D:/Bima/Kuliah/Semester II/statistika/BBMhs_Kel3")

install.packages("readxl")
library(readxl)
Data_BBMhs <- read_excel("BBMhs_Kel3.xlsx", sheet = "RawData")
View(Data_BBMhs)

tabel <- Data_BBMhs

range <-  c(36-40, 41-45, 46-50, 51-55, 56-60, 61-65, 66-70, 71-75)
frekuensi <- c(4,27,16,16,17,8,4,8)
titik_tengah <- c(38,43,48,53,58,63,68,73)


#mean
mean = sum(tabel$f.xi)/length(tabel)
total_frekuensi = sum(frekuensi)
fx <- as.numeric (f.xi)
mean = sum(fx)/total_frekuensi


#median
KetMedian <- data.frame (
  keterangan = c("b", "n", "F", "f", "p"),
  niilai = c(50.5, 100, 47, 16, 5)
)
KeteranganMedian
b=50.5
n=100
F=47
f=16
p=5
median1= b + p * ((1/2*n-F)/f)


#Modus
KeteranganModus <- data.frame(
  keterangan = c("b", "p", "b1", "b2"),
  nilai = c(39.5, 5, 23, 11)
)
KeteranganModus
b = 39.5
p = 5
b1 = 23
b2 = 11
  
modus1= b + p * (b1/(b1+b2))

KeteranganModus <- data.frame(
  keterangan = c("b", "p", "b1", "b2"),
  nilai = c(39.5, 5, 23, 11)
)

KeteranganModus


tabel


#Range
max <- max(tabel$'xi')
min <- min(tabel$'xi')

range1 = max - min


#MeanDeviasi
TotalSimpangan = sum(tabel$'f|xi-y|')

MeanDeviasi = (sum(tabel$'f|xi-y|'))/(sum(tabel$'frekuensi (f)'))


#StandarDeviasi
TotalSimpanganBaku = (sum(tabel$'f((xi-y)^2)'))/(sum(tabel$'frekuensi (f)'))

StandarDeviasi = sqrt(TotalSimpanganBaku) 