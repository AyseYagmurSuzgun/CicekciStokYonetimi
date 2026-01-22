SELECT isim,adres FROM Tedarikci

SELECT * FROM Cicek
WHERE fiyat>10 and stokmiktar>50;

SELECT * FROM Musteri
order by yas ASC;

SELECT DISTINCT yas FROM Musteri
order by yas;

SELECT AVG (toplamtutar) AS OrtalamaToplamTutar
FROM Siparis;

SELECT * FROM Siparis
WHERE toplamtutar=(
	SELECT MAX (toplamtutar) FROM Siparis);

SELECT siparisid,toplamtutar FROM Siparis
WHERE toplamtutar=(
	SELECT MIN (toplamtutar) FROM Siparis);

UPDATE SiparisDetay
SET fiyat=fiyat+1
WHERE fiyat = (SELECT MIN(fiyat) FROM SiparisDetay);
SELECT*FROM SiparisDetay

SELECT * FROM Musteri
WHERE (yas>=20 AND yas<=25)AND NOT (isim='Derya Kartal');

SELECT * FROM Siparis
WHERE siparisid IN
(SELECT siparisid FROM SiparisDetay WHERE miktar=3);

SELECT * FROM Calisan WHERE Calisan.mail LIKE '%@hotmail.com%';

SELECT * FROM durum_takibi_yapar LIMIT 3;

SELECT * FROM durum_takibi_yapar LIMIT 3 OFFSET 2;

SELECT * FROM Musteri
WHERE yas BETWEEN 27 AND 30;

SELECT * FROM Musteri
WHERE yas IN (27,30);

SELECT * FROM Cicek
WHERE isim IN ('Lale','Zambak');

SELECT cicekid,isim FROM Cicek
ORDER BY stokmiktar DESC
OFFSET 2 ROWS
FETCH FIRST 2 ROW ONLY;

SELECT COUNT (yas) AS toplam,yas FROM Musteri
GROUP BY yas
ORDER BY yas;

SELECT yas, COUNT (yas) AS toplam FROM Musteri
GROUP BY yas
HAVING yas>27
ORDER BY toplam;

SELECT yas, COUNT (yas) AS toplam FROM Musteri
GROUP BY yas
HAVING yas>(SELECT MIN (yas) FROM Musteri)
ORDER BY toplam;

SELECT d.siparisid, COUNT (d.siparisid), round (AVG (d.fiyat),2) AS ortalama
FROM SiparisDetay d GROUP BY d.siparisid;

SELECT * FROM SiparisDetay CROSS JOIN Siparis;

SELECT * FROM SiparisDetay d INNER JOIN Siparis s
ON s.siparisid=d.siparisid;

SELECT d.siparisid, d.miktar, d.fiyat, s.toplamtutar FROM SiparisDetay d INNER JOIN Siparis s
ON s.siparisid=d.siparisid;

SELECT * FROM SiparisDetay d LEFT JOIN Siparis s ON s.siparisid=d.siparisid;

SELECT * FROM Siparis s LEFT JOIN SiparisDetay d ON s.siparisid=d.siparisid;

SELECT * FROM Siparis s RIGHT JOIN SiparisDetay d ON s.siparisid=d.siparisid;

SELECT * FROM SiparisDetay d LEFT JOIN Siparis s ON s.siparisid=d.siparisid;

SELECT * FROM SiparisDetay d FULL JOIN Siparis s ON s.siparisid=d.siparisid;

SELECT * FROM Siparis s FULL JOIN SiparisDetay d ON s.siparisid=d.siparisid;

SELECT * FROM SiparisDetay d NATURAL JOIN Siparis;  
SELECT * FROM SiparisDetay d NATURAL INNER JOIN Siparis;

SELECT * FROM SiparisDetay d NATURAL LEFT JOIN Siparis;

SELECT * FROM SiparisDetay d NATURAL RIGHT JOIN Siparis;

