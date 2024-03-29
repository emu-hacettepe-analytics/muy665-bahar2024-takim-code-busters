custom_summary <- function(vec) {              #fonksıyonu vektor olarak tanımladık ;  vec her bir sütunu temsilen
  summary_list <- list(
    mean = mean(vec),                      #gırdıgının ortalaması
    median = median(vec),                  #girdinin medyanı
    std_dev = sd(vec),                     #girdinin std sapması
    min = min(vec),                        #girdinin minimumu
    max = max(vec)                         #girdinin maximumu
  )
  return(summary_list)
}

#bu verileri yazdırabilmek için de değişkene atayıp print ettirmemiz gerekir, aynı zamanda hangi sütunu özetleyeceğimizi belirtmeliyiz, cyl yerine mpg de olabilir 


cyl_summary <- custom_summary(mtcars$cyl)
print(cyl_summary)

for (n in 1:ncol(mtcars)) {                        # 1'den mtcars data setinin sütun sayısına kadar for loop döndürmek için n değişkeni tanımlandı.
  
  column_name <- colnames(mtcars)[n]               # sütun isimlerini bastırmak için column_name değişkeni tanımlandı. 
  list_of_variables <- custom_summary(mtcars[,n])  # yukarıda tanımlanan custom_summary fonksiyonu çalıştırıldı.
  print(column_name)                               # sütun adı yazdırıldı.
  print(list_of_variables)                         # fonksiyonun içinde hesaplanan değerler bastırıldı.
  
}

apply(mtcars, 2, custom_summary)                   #apply kullanılarak yukarıdaki for döngüsü tek bir komut ile çalıştırıldı.
