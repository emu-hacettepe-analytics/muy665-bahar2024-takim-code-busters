install.packages("dslabs")
library(dslabs)
print(na_example)                                             #na_example veri seti yazdırıldı.
na_example_na_locations <- is.na(na_example)                  #na_example veri setinde bulunan "NA"lerin konumu array olarak bulundu.
na_total <- sum(na_example_na_locations)                      #toplam "NA" sayısı hesaplandı.
print(na_total)                                               #toplam "NA" sayısı yazdırıldı.
example_665 <- replace(na_example, is.na(na_example), 665)    #na_example veri setinde bulunan "NA" değerleri "665" ile değiştirildi ve oluşan yeni veri seti example_665 adıyla kaydedildi.
print(example_665)                                            #yeni veri seti olan example_665 yazdırıldı.
example_665_na_locations <- is.na(example_665)                #example_665 veri setinde bulunan "NA"lerin konumu array olarak bulundu. (boş array oluşturmalı)
example_665_total_na <- sum(example_665_na_locations)         #example_665 veri setinde bulunan toplam "NA" sayısı hesaplandı.
print(example_665_total_na)                                   #example_665 veri setinde bulunan toplam "NA" sayısı yazdırıldı.
example_665_locations_of_665 <- (example_665 == 665)          #example_665 veri setinde bulunan "665" değerlerinin konumu array olarak bulundu.
example_665_total_665 <- sum(example_665_locations_of_665)    #example_665 veri setinde bulunan toplam "665" sayısı hesaplandı.
print(example_665_total_665)                                  #example_665 veri setinde bulunan toplam "665" sayısı yazdırıldı.
am_i_correct <- na_total == example_665_total_665             #na_example veri setinde bulunan "NA" değerlerinin toplamı ile example_665 veri setinde bulunan "665" değerlerinin toplamı karşılaştırıldı (logical).
if (am_i_correct) {                                           #yukarı satırda karşılaştırılan değerler eşitse "congrats", değilse "try again" yazdırıldı.
  print("congrats")
}  else {
    print("try again")
  }

  