CREATE OR REPLACE VIEW DenunceUltimoMese AS
SELECT *
FROM Denuncia
WHERE data_emissione >= ADD_MONTHS(SYSDATE, -1);

SELECT * FROM DenunceUltimoMese;


CREATE OR REPLACE VIEW VistaImputati AS
SELECT CF, nome, cognome, data_nascita, telefono, id_imputato
FROM Persona
WHERE id_imputato IS NOT NULL;

SELECT * FROM VistaImputati;

CREATE OR REPLACE VIEW VistaVittime AS
SELECT CF, nome, cognome, data_nascita, telefono, id_vittima
FROM Persona
WHERE id_vittima IS NOT NULL;

SELECT * FROM VistaVittime;

CREATE OR REPLACE VIEW MulteUltimiTreMesi AS
SELECT *
FROM Multa
WHERE data_emissione_multa >= ADD_MONTHS(SYSDATE, -3);

SELECT * FROM MulteUltimiTreMesi;
