DROP TABLE IF EXISTS alir CASCADE;
DROP TABLE IF EXISTS verir CASCADE;
DROP TABLE IF EXISTS durum_takibi_yapar CASCADE;
DROP TABLE IF EXISTS temin_eder CASCADE;
DROP TABLE IF EXISTS SiparisDetay CASCADE;
DROP TABLE IF EXISTS Siparis CASCADE;
DROP TABLE IF EXISTS Musteri CASCADE;
DROP TABLE IF EXISTS Calisan CASCADE;
DROP TABLE IF EXISTS Cicek CASCADE;
DROP TABLE IF EXISTS Tedarikci CASCADE;

-- TABLO OLUŞTURMA

-- VARLIK TABLOLARI OLUŞTURMA

-- 1.Tedarikçi Tablosu
CREATE TABLE Tedarikci (
    TedarikciID SERIAL PRIMARY KEY,
    Isim VARCHAR(50),
    Telefon VARCHAR(20),
    Adres VARCHAR(100),
    Mail VARCHAR(50)
);

-- 2.Çiçek Tablosu
CREATE TABLE Cicek (
    CicekID SERIAL PRIMARY KEY,
    Isim VARCHAR(50),
    Tur VARCHAR(50),
    Renk TEXT[],
    Fiyat NUMERIC(10,2),
    StokMiktar INT
);

-- 3.Çalışan Tablosu 
CREATE TABLE Calisan (
    TcNo BIGINT PRIMARY KEY,
    Isim VARCHAR(50),
    Telefon VARCHAR(20),
    Adres VARCHAR(100),
    Mail VARCHAR(50)
);

-- 4.Müşteri Tablosu 
CREATE TABLE Musteri (
    MusteriID SERIAL PRIMARY KEY,
    Isim VARCHAR(50),
    Cinsiyet VARCHAR(10),
    Yas INT,
    Telefon VARCHAR(20),
    Adres VARCHAR(100),
    Mail VARCHAR(50)
);

-- 5.Sipariş Tablosu 
CREATE TABLE Siparis (
    SiparisID SERIAL PRIMARY KEY,
	MusteriID INT REFERENCES Musteri(MusteriID),
    ToplamTutar NUMERIC(10,2)
);

-- 6.SiparişDetay Tablosu 
CREATE TABLE SiparisDetay (
    SiparisID INT REFERENCES Siparis(SiparisID),
    CicekID INT REFERENCES Cicek(CicekID),
    Miktar INT,
    Fiyat NUMERIC(10,2),
	PRIMARY KEY (SiparisID, CicekID)
);

-- İLİŞKİ TABLOLARI OLUŞTURMA

-- 7.temin_eder (Tedarikçi-Çiçek)
CREATE TABLE temin_eder (
    TedarikciID INT REFERENCES Tedarikci(TedarikciID),
    CicekID INT REFERENCES Cicek(CicekID),
    TeminTarihi DATE,
    PRIMARY KEY (TedarikciID, CicekID)
);

-- 8.durum_takibi_yapar (Çalışan-Çiçek)
CREATE TABLE durum_takibi_yapar (
    TcNo BIGINT REFERENCES Calisan(TcNo),
	CicekID INT REFERENCES Cicek(CicekID),
    Durum VARCHAR(50),
    KontrolTarihi DATE,
    PRIMARY KEY (TcNo, CicekID)
);

-- 9.verir Müşteri-Sipariş)
CREATE TABLE verir (
    MusteriID INT REFERENCES Musteri(MusteriID),
    SiparisID INT REFERENCES Siparis(SiparisID),
    SiparisVerisTarihi DATE,
    PRIMARY KEY (MusteriID, SiparisID)
);

-- 10.alir (Çalışan-Sipariş)
CREATE TABLE alir (
    TcNo BIGINT REFERENCES Calisan(TcNo),
    SiparisID INT REFERENCES Siparis(SiparisID),
    SiparisAlisTarihi DATE,
    PRIMARY KEY (TcNo, SiparisID)
);

