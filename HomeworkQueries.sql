3-  �Yaz�l�m� veya �Donan�m� birimlerinde �al��anlar�n ad, soyad ve maa� bilgilerini listeleyen SQL sorgusunu yaz�n�z.

SELECT c.ad, c.soyad, c.maas
FROM Calisan c
JOIN Birim b ON c.calisan_birim_id = b.birim_id
WHERE b.birim_ad IN ('Yaz�l�m', 'Donan�m');


4 - Maa�� en y�ksek olan �al��anlar�n ad, soyad ve maa� bilgilerini listeleyen SQL sorgusunu yaz�n�z. (Tek bir sorgu ile) 

SELECT ad, soyad, maas
FROM Calisan
WHERE maas = (SELECT MAX(maas) FROM Calisan);

5 - Birimlerin her birinde ka� adet �al��an oldu�unu ve birimlerin isimlerini listeleyen sorguyu yaz�n�z. 
SELECT b.birim_ad, COUNT(c.calisan_id) AS calisan_sayisi
FROM Birim b
LEFT JOIN Calisan c ON b.birim_id = c.calisan_birim_id
GROUP BY b.birim_ad;

6) Birden fazla �al��ana ait olan unvanlar�n isimlerini ve o unvan alt�nda �al��anlar�n say�s�n� listeleyen sorguyu yaz�n�z. (Tek bir sorgu ile)

SELECT unvan_calisan, COUNT(*) AS calisan_sayisi
FROM Unvan
GROUP BY unvan_calisan
HAVING COUNT(*) > 1;

7 -  Maa�lar� �50000� ve �100000� aras�nda de�i�en �al��anlar�n ad, soyad ve maa� bilgilerini listeleyen sorguyu yaz�n�z.

SELECT ad, soyad, maas
FROM Calisan

8 - �kramiye hakk�na sahip �al��anlara ait ad, soyad, birim, unvan ve ikramiye �creti bilgilerini listeleyen sorguyu yaz�n�z.

SELECT c.ad, c.soyad, b.birim_ad, u.unvan_calisan, i.ikramiye_ucret
FROM Calisan c
JOIN Birim b ON c.calisan_birim_id = b.birim_id
JOIN Unvan u ON c.calisan_id = u.unvan_calisan_id
JOIN Ikramiye i ON c.calisan_id = i.ikramiye_calisan_id;

9 - �nvan� �Y�netici� ve �M�d�r� olan �al��anlar�n ad, soyad ve �nvanlar�n� listeleyen sorguyu yaz�n�z.

SELECT c.ad, c.soyad, u.unvan_calisan
FROM Calisan c
JOIN Unvan u ON c.calisan_id = u.unvan_calisan_id
WHERE u.unvan_calisan IN ('Y�netici', 'M�d�r');

10 - Her bir birimde en y�ksek maa� alan �al��anlar�n ad, soyad ve maa� bilgilerini listeleyen sorguyu yaz�n�z.

SELECT c.ad, c.soyad, c.maas, b.birim_ad
FROM Calisan c
JOIN Birim b ON c.calisan_birim_id = b.birim_id
WHERE (c.maas) IN (
    SELECT MAX(maas)
    FROM Calisan
    GROUP BY calisan_birim_id
);





