
INSERT INTO Birim (birim_id, birim_ad) VALUES 
(1, 'Yaz�l�m'),
(2, 'Donan�m'),
(3, 'G�venlik');

INSERT INTO Calisan (calisan_id, ad, soyad, maas, katilmaTarihi, calisan_birim_id) VALUES 
(1, '�smail', '��eri', 100000, '2014-02-20 00:00:00', 1),
(2, 'Hami', 'Sat�lm��', 80000, '2014-06-11 00:00:00', 1),
(3, 'Dumu�', '�ahin', 300000, '2014-02-20 00:00:00', 2),
(4, 'Ka�an', 'Yazar', 500000, '2014-02-20 00:00:00', 3),
(5, 'Meryem', 'Soysal', 500000, '2016-06-11 00:00:00', 3),
(6, 'Duygu', 'Ak�ehir', 200000, '2016-06-11 00:00:00', 2),
(7, 'K�bra', 'Seyhan', 75000, '2016-01-20 00:00:00', 1),
(8, 'G�lcan', 'Y�ld�z', 90000, '2014-04-11 00:00:00', 3);


INSERT INTO Ikramiye (ikramiye_calisan_id, ikramiye_ucret, ikramiye_tarih) VALUES 
(1, 5000, '2016-02-20 00:00:00'),
(2, 3000, '2016-06-11 00:00:00'),
(3, 4000, '2016-02-20 00:00:00'),
(1, 4500, '2016-02-20 00:00:00'),
(2, 3500, '2016-06-11 00:00:00');


INSERT INTO Unvan (unvan_calisan_id, unvan_calisan, unvan_tarih) VALUES 
(1, 'Y�netici', '2016-02-20 00:00:00'),
(2, 'Personel', '2016-06-11 00:00:00'),
(8, 'Personel', '2016-06-11 00:00:00'),
(5, 'M�d�r', '2016-06-11 00:00:00'),
(4, 'Y�netici Yard�mc�s�', '2016-06-11 00:00:00'),
(7, 'Personel', '2016-06-11 00:00:00'),
(6, 'Tak�m Lideri', '2016-06-11 00:00:00'),
(3, 'Tak�m Lideri', '2016-06-11 00:00:00');


