CREATE TABLE Birim (
    birim_id INT PRIMARY KEY,
    birim_ad NVARCHAR(50) NOT NULL
);
CREATE TABLE Calisan (
    calisan_id INT PRIMARY KEY,
    ad NVARCHAR(50) NOT NULL,
    soyad NVARCHAR(50) NOT NULL,
    maas INT NOT NULL,
    katilmaTarihi DATETIME NOT NULL,
    calisan_birim_id INT,
    FOREIGN KEY (calisan_birim_id) REFERENCES Birim(birim_id) 
);
CREATE TABLE Ikramiye (
    ikramiye_calisan_id INT,
    ikramiye_ucret INT NOT NULL,
    ikramiye_tarih DATETIME NOT NULL,
    FOREIGN KEY (ikramiye_calisan_id) REFERENCES Calisan(calisan_id) 
);
CREATE TABLE Unvan (
    unvan_calisan_id INT,
    unvan_calisan NVARCHAR(50) NOT NULL,
    unvan_tarih DATETIME NOT NULL,
    FOREIGN KEY (unvan_calisan_id) REFERENCES Calisan(calisan_id) 
);
