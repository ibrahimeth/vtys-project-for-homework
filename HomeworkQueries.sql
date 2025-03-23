3-  “Yazýlým” veya “Donaným” birimlerinde çalýþanlarýn ad, soyad ve maaþ bilgilerini listeleyen SQL sorgusunu yazýnýz.

SELECT c.ad, c.soyad, c.maas
FROM Calisan c
JOIN Birim b ON c.calisan_birim_id = b.birim_id
WHERE b.birim_ad IN ('Yazýlým', 'Donaným');


4 - Maaþý en yüksek olan çalýþanlarýn ad, soyad ve maaþ bilgilerini listeleyen SQL sorgusunu yazýnýz. (Tek bir sorgu ile) 

SELECT ad, soyad, maas
FROM Calisan
WHERE maas = (SELECT MAX(maas) FROM Calisan);

5 - Birimlerin her birinde kaç adet çalýþan olduðunu ve birimlerin isimlerini listeleyen sorguyu yazýnýz. 
SELECT b.birim_ad, COUNT(c.calisan_id) AS calisan_sayisi
FROM Birim b
LEFT JOIN Calisan c ON b.birim_id = c.calisan_birim_id
GROUP BY b.birim_ad;

6) Birden fazla çalýþana ait olan unvanlarýn isimlerini ve o unvan altýnda çalýþanlarýn sayýsýný listeleyen sorguyu yazýnýz. (Tek bir sorgu ile)

SELECT unvan_calisan, COUNT(*) AS calisan_sayisi
FROM Unvan
GROUP BY unvan_calisan
HAVING COUNT(*) > 1;

7 -  Maaþlarý “50000” ve “100000” arasýnda deðiþen çalýþanlarýn ad, soyad ve maaþ bilgilerini listeleyen sorguyu yazýnýz.

SELECT ad, soyad, maas
FROM Calisan

8 - Ýkramiye hakkýna sahip çalýþanlara ait ad, soyad, birim, unvan ve ikramiye ücreti bilgilerini listeleyen sorguyu yazýnýz.

SELECT c.ad, c.soyad, b.birim_ad, u.unvan_calisan, i.ikramiye_ucret
FROM Calisan c
JOIN Birim b ON c.calisan_birim_id = b.birim_id
JOIN Unvan u ON c.calisan_id = u.unvan_calisan_id
JOIN Ikramiye i ON c.calisan_id = i.ikramiye_calisan_id;

9 - Ünvaný “Yönetici” ve “Müdür” olan çalýþanlarýn ad, soyad ve ünvanlarýný listeleyen sorguyu yazýnýz.

SELECT c.ad, c.soyad, u.unvan_calisan
FROM Calisan c
JOIN Unvan u ON c.calisan_id = u.unvan_calisan_id
WHERE u.unvan_calisan IN ('Yönetici', 'Müdür');

10 - Her bir birimde en yüksek maaþ alan çalýþanlarýn ad, soyad ve maaþ bilgilerini listeleyen sorguyu yazýnýz.

SELECT c.ad, c.soyad, c.maas, b.birim_ad
FROM Calisan c
JOIN Birim b ON c.calisan_birim_id = b.birim_id
WHERE (c.maas) IN (
    SELECT MAX(maas)
    FROM Calisan
    GROUP BY calisan_birim_id
);





