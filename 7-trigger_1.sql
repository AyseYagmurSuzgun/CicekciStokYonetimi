CREATE TABLE siparis_guncelleme (
    SiparisID INT,
    EskiTutar NUMERIC(10,2),
    GuncellemeTarihi DATE
);

CREATE OR REPLACE FUNCTION siparis_degisikligi()
  RETURNS TRIGGER
  LANGUAGE PLPGSQL
  AS
$$
BEGIN
	INSERT INTO siparis_guncelleme (SiparisID, EskiTutar, GuncellemeTarihi)
	VALUES (OLD.SiparisID, OLD.ToplamTutar, CURRENT_DATE);
	RETURN NEW;
END;
$$

CREATE TRIGGER toplam_tutar_degisikligi 
  BEFORE UPDATE
  ON Siparis
  FOR EACH ROW
  EXECUTE PROCEDURE siparis_degisikligi();

UPDATE Siparis
SET ToplamTutar = 500
WHERE SiparisID = 2;

SELECT * FROM siparis_guncelleme;
SELECT * FROM Siparis;

