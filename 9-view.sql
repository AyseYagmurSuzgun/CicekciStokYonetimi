CREATE OR REPLACE VIEW public.topten_cicek AS
 SELECT Cicek.cicekid,
    Cicek.isim,
    SUM(SiparisDetay.miktar) AS toplam_satis
   FROM Cicek
	 JOIN SiparisDetay ON Cicek.cicekid = SiparisDetay.cicekid
  GROUP BY Cicek.cicekid, Cicek.isim
  ORDER BY toplam_satis DESC
 LIMIT 10;

ALTER TABLE public.topten_cicek
	OWNER TO postgres;

SELECT * FROM topten_cicek

