CREATE OR REPLACE FUNCTION cicek_siparis_sayisi(p_cicekid INT)
RETURNS INT
LANGUAGE plpgsql
AS $$
DECLARE
    toplam_siparis INT;
BEGIN
    SELECT COUNT(*) 
	INTO toplam_siparis
    FROM SiparisDetay
    WHERE CicekID = p_cicekid;

    RETURN toplam_siparis;
END;
$$;

SELECT cicek_siparis_sayisi(10)
