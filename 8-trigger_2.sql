CREATE TABLE silinen_siparisler (
    SiparisID INT,
    ToplamTutar NUMERIC(10,2),
    SilinmeTarihi DATE
);

CREATE OR REPLACE FUNCTION siparis_sil()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO silinen_siparisler
    VALUES (OLD.SiparisID, OLD.ToplamTutar, CURRENT_DATE);

    RETURN OLD;
END;
$$;

CREATE TRIGGER siparis_silme_kaydi
AFTER DELETE
ON Siparis
FOR EACH ROW
EXECUTE FUNCTION siparis_sil();

DELETE FROM Siparis
WHERE SiparisID = 9;

SELECT * FROM silinen_siparisler;
SELECT * FROM Siparis;