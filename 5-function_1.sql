CREATE OR REPLACE FUNCTION toplam_tutar_hesapla(p_siparisid INT)
RETURNS NUMERIC(10,2)
LANGUAGE plpgsql
AS 
$$
DECLARE
    toplam NUMERIC(10,2);
BEGIN
    SELECT SUM(Miktar * Fiyat)
    INTO toplam
    FROM SiparisDetay
    WHERE SiparisID = p_siparisid;

    RETURN toplam;
END;
$$;

SELECT toplam_tutar_hesapla(3);
