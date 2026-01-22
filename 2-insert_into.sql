-- TABLOLARA VERİ EKLEME

-- Tedarikçi
INSERT INTO Tedarikci (Isim, Telefon, Adres, Mail) VALUES
('Yağmur Çiçekçilik', '0536 211 40 26', 'Isparta', 'yagmurcicekcilik32@hotmail.com'),
('Roseland Lavanta Bahçesi', '0543 724 29 17', 'Isparta', 'info@nemroseoil.com'),
('İstanbul Çiçekleri', '0549 494 53 36', 'İstanbul', 'info@istanbulcicekleri.com'),
('Ali Botanik', '0532 065 14 36', 'İzmir', 'alibotanik35@gmail.com'),
('Bitki Çiftliği Çiçek & Peyzaj', '0532 208 72 13', 'Antalya', 'bitkiciftligi@gmail.com'),
('Çiçek Serası', '0505 229 22 66', 'Yalova', 'info@cicekserasi.com'),
('The Lily Garden', '(360) 253 6273', 'ABD', 'thelilygarden@aol.com'),
('ORKIDE Pemtaş Ve Çiçekçilik', '(212) 863 4257', 'İstanbul', 'orkide@orkidepemtas.com.tr'),
('Atlas Kaktüs Fidan', '0541 723 25 28', 'Muğla', 'atlaskaktusfidan@gmail.com'),
('Şahlan Fidanlık', '0216 711 03 56', 'İstanbul', 'info@sahlanfidanlik.com');

-- Cicek
INSERT INTO Cicek (Isim, Tur, Renk, Fiyat, StokMiktar) VALUES
('Gül','Kesme Çiçek',ARRAY['Kırmızı','Beyaz','Pembe'],17.00,50),
('Lavanta','Bahçe Bitkisi',ARRAY['Mor'],18.00,55),
('Lale','Kesme Çiçek',ARRAY['Sarı','Beyaz'],13.50,40),
('Ortanca','Saksı Çiçeği',ARRAY['Kırmızı','Pembe','Mor'],25.00,30),
('Şakayık','Kesme Çiçek',ARRAY['Pembe','Kırmızı','Beyaz'],18.00,25),
('Zambak','Kesme Çiçek',ARRAY['Beyaz','Pembe'],9.50,80),
('Orkide','Saksı Çiçeği',ARRAY['Beyaz'],120.00,30),
('Karanfil','Kesme Çiçek',ARRAY['Kırmızı'],10.50,70),
('Kaktüs','Saksı Çiçeği',ARRAY['Yeşil'],15.00,35),
('Menekşe','Saksı Çiçeği',ARRAY['Turuncu','Sarı','Mor','Kırmızı'],18.00,25);

-- Calisan
INSERT INTO Calisan (TcNo, Isim, Telefon, Adres, Mail) VALUES
(27496815342,'Nehir Dağdeviren', '0555-875-12-00', 'Moda Mah., Mühürdar Cad. No:27, Kadıköy, İstanbul', 'nehir.dagdeviren@gmail.com'),
(18604792518,'Selçuk İnan', '0553-152-56-21', 'Büyükdere Mah., Büyükdere Cad. No:42, Sarıyer, İstanbul', 'selcuk.inan@gmail.com'),
(59038142766,'Ayşe Özkaya', '0555-945-22-53', 'İstinye Mah., Pınar Cad. No:18, Sarıyer, İstanbul', 'ayse.ozkaya@gmail.com'),
(47395280134,'Miraç Arslan', '0554-357-31-77', 'Mecidiyeköy Mah., Abdi İpekçi Cad. No:23, Şişli, İstanbul', 'mirac.arslan@hotmail.com'),
(35810497620,'Zeynep Turna', '0555-756-44-23', 'Caferağa Mah., Kadife Sok. No:12, Kadıköy, İstanbul', 'zeynep.turna@gmail.com'),
(74286039158,'Aras Demir', '0538-448-75-52', 'Galata Mah., Bankalar Cad. No:45, Beyoğlu, İstanbul', 'aras.demir@hotmail.com'),
(51947308246,'Elif Gürsoy', '0553-117-48-66', 'Sultantepe Mah., Defterdaroğlu Sok. No:20, Üsküdar, İstanbul', 'elif.gursoy@gmail.com'),
(80415239760,'Bahar Yıldırım', '0555-224-76-34', 'Cihangir Mah., Sıraselviler Cad. No:38, Beyoğlu, İstanbul', 'bahar.yildirim@gmail.com'),
(62597084312,'Defne Sezin', '0552-675-85-28', 'Maslak Mah., Büyükdere Cad. No:233, Sarıyer, İstanbul', 'defne.sezin@gmail.com'),
(96758324018,'Emir Zorlu', '0554-839-54-45', 'Bebek Mah., Yunus Emre Sok. No:9, Sarıyer, İstanbul', 'emir.zorlu@hotmail.com');

-- Musteri
INSERT INTO Musteri (Isim, Cinsiyet, Yas, Telefon, Adres, Mail) VALUES
('Ali Çetin', 'Erkek', 32, '0551-234-56-78', 'Esentepe Mah., Halaskargazi Cad. No:110, Şişli, İstanbul', 'ali.cetin@gmail.com'),
('Selin Arıca', 'Kadın', 28, '0532-987-65-43', 'Göztepe Mah., Bağdat Cad. No:214, Kadıköy, İstanbul', 'selin.arica@hotmail.com'),
('Mert Polat', 'Erkek', 25, '0543-876-54-32', 'Karaköy Mah., Kart Çınar Sok. No:7, Beyoğlu, İstanbul', 'mert.polat@gmail.com'),
('Seda Işık', 'Kadın', 30, '0555-765-43-21', 'Teşvikiye Mah., Mim Kemal Öke Sok. No:9, Şişli, İstanbul', 'seda.isik@gmail.com'),
('Derya Kartal', 'Kadın', 22, '0531-654-32-10', 'Merdivenköy Mah., Bağdat Cad. No:302, Kadıköy, İstanbul', 'derya.kartal@gmail.com'),
('Eren Çakır', 'Erkek', 32, '0541-543-21-09', 'Altunizade Mah., 6. Sok. No:9, Üsküdar, İstanbul', 'eren.cakir@gmail.com'),
('Gizem Koç', 'Kadın', 27, '0552-432-10-98', 'İçerenköy Mah., 12. Sok. No:18, Ataşehir, İstanbul', 'gizem.koc@gmail.com'),
('Kerem Kızıl', 'Erkek', 35, '0535-321-09-87', 'Ayazma Mah., Çırçır Sok. No:5, Üsküdar, İstanbul', 'kerem.kizil@gmail.com'),
('Sena Ada', 'Kadın', 35, '0545-210-98-76', 'Harem Mah., Mıgırdıç Sok. No:11, Üsküdar, İstanbul', 'sena.ada@gmail.com'),
('Berke Demirci', 'Erkek', 29, '0533-109-87-65', 'Güvercintepe Mah., Papatya Sok. No:26, Başakşehir, İstanbul', 'berke.demirci@hotmail.com');

-- Siparis
INSERT INTO Siparis (MusteriID, ToplamTutar) VALUES
(1, 10*17.00 + 1*120.00),
(2, 3*25.00 + 20*18.00),
(3, 5*18.00 + 3*15.00 + 1*120.00),
(4, 70*10.50  + 3*120.00),
(5, 10*18.00 + 10*17.00 + 5*10.50),
(6, 20*13.50 + 2*25.00 + 3*18.00),
(7, 20*18.00 + 2*120.00 + 5*15.00),
(8, 15*13.50 + 3*18.00),
(9, 20*10.50),
(10, 30*17.00 + 15*18.00 + 1*120.00 + 1*18.00);

-- SiparisDetay
INSERT INTO SiparisDetay (SiparisID, CicekID, Miktar, Fiyat) VALUES
(1,1,10,17.00),
(1,7,1,120.00),
(2,4,3,25.00),
(2,2,20,18.00),
(3,10,5,18.00),
(3,9,3,15.00),
(3,7,1,120.00),
(4,8,70,10.50),
(4,7,3,120.00),
(5,5,10,18.00),
(5,1,10,17.00),
(5,6,5,09.50),
(6,3,20,13.50),
(6,4,2,25.00),
(6,10,3,18.00),
(7,2,20,18.00),
(7,7,2,120.00),
(7,9,5,15.00),
(8,4,3,18.00),
(8,3,15,13.50),
(9,6,20,09.50),
(10,1,30,17.00),
(10,5,15,18.00),
(10,7,1,120.00),
(10,10,1,18.00);

-- temin_eder
INSERT INTO temin_eder (TedarikciID, CicekID, TeminTarihi) VALUES
(1, 1, '01-11-2025'),
(2, 2, '12-11-2025'),
(3, 3, '13-11-2025'),
(4, 4, '17-11-2025'),
(5, 5, '17-11-2025'),
(6, 6, '17-11-2025'),
(7, 7, '18-11-2025'),
(8, 8, '20-11-2025'),
(9, 9, '22-11-2025'),
(10, 10, '23-11-2025');

-- durum_takibi_yapar
INSERT INTO durum_takibi_yapar (TcNo, CicekID, Durum, KontrolTarihi) VALUES
(27496815342, 1, 'Stokta var: 40', '19-11-2025'),
(27496815342, 7, 'Stokta var: 29', '19-11-2025'),
(18604792518, 4, 'Stokta var: 27', '19-11-2025'),
(18604792518, 2, 'Stokta var: 35', '19-11-2025'),
(59038142766, 10,'Stokta var: 20', '23-11-2025'),
(59038142766, 9, 'Stokta var: 32', '23-11-2025'),
(59038142766, 7, 'Stokta var: 28', '23-11-2025'),
(47395280134, 8, 'Stokta yok: 0' , '24-11-2025'),
(47395280134, 7, 'Stokta var: 25', '24-11-2025'),
(35810497620, 5, 'Stokta var: 15', '25-11-2025'),
(35810497620, 1, 'Stokta var: 30', '25-11-2025'),
(35810497620, 6, 'Stokta var: 75', '25-11-2025'),
(74286039158, 3, 'Stokta var: 20', '27-11-2025'),
(74286039158, 4, 'Stokta var: 25', '27-11-2025'),
(74286039158, 10,'Stokta var: 17', '27-11-2025'),
(51947308246, 2, 'Stokta var: 15', '28-11-2025'),
(51947308246, 7, 'Stokta var: 23', '28-11-2025'),
(51947308246, 9, 'Stokta var: 27', '28-11-2025'),
(80415239760, 4, 'Stokta var: 22', '01-12-2025'),
(80415239760, 3, 'Stokta var: 05', '01-12-2025'),
(62597084312, 6, 'Stokta var: 55', '02-12-2025'),
(96758324018, 1, 'Stokta yok: 0', '03-12-2025'),
(96758324018, 5, 'Stokta yok: 0', '03-12-2025'),
(96758324018, 7, 'Stokta var: 22', '03-12-2025'),
(96758324018, 10,'Stokta var: 16', '03-12-2025');

-- verir
INSERT INTO verir (MusteriID, SiparisID, SiparisVerisTarihi) VALUES
(1,1,'19-11-2025'),
(2,2,'19-11-2025'),
(3,3,'23-11-2025'),
(4,4,'24-11-2025'),
(5,5,'25-11-2025'),
(6,6,'27-11-2025'),
(7,7,'28-11-2025'),
(8,8,'01-12-2025'),
(9,9,'02-12-2025'),
(10,10,'03-12-2025');

-- alir
INSERT INTO alir (TcNo, SiparisID, SiparisAlisTarihi) VALUES
(27496815342,1,'19-11-2025'),
(18604792518,2,'19-11-2025'),
(59038142766,3,'23-11-2025'),
(47395280134,4,'24-11-2025'),
(35810497620,5,'25-11-2025'),
(74286039158,6,'27-11-2025'),
(51947308246,7,'28-11-2025'),
(80415239760,8,'01-12-2025'),
(62597084312,9,'02-12-2025'),
(96758324018,10,'03-12-2025');
