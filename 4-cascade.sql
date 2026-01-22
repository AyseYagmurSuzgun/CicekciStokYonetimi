ALTER TABLE SiparisDetay DROP CONSTRAINT siparisdetay_siparisid_fkey;
ALTER TABLE SiparisDetay ADD CONSTRAINT siparisdetay_siparisid_fkey
SiparisID INT REFERENCES Siparis(SiparisID) ON DELETE CASCADE;

ALTER TABLE verir DROP CONSTRAINT verir_siparisid_fkey;
ALTER TABLE verir ADD CONSTRAINT verir_siparisid_fkey
SiparisID INT REFERENCES Siparis(SiparisID) ON DELETE CASCADE;

ALTER TABLE alir DROP CONSTRAINT alir_siparisid_fkey;
ALTER TABLE alir ADD CONSTRAINT alir_siparisid_fkey
SiparisID INT REFERENCES Siparis(SiparisID) ON DELETE CASCADE;

DELETE FROM Siparis WHERE SiparisID = 1;
SELECT * FROM Siparis WHERE SiparisID = 1;
SELECT * FROM Siparis;

