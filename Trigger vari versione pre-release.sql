/*Vincolo di integrità temporale per la data di emissione della multa*/
CREATE OR REPLACE TRIGGER verifica_data_multa
BEFORE INSERT OR UPDATE ON Multa
FOR EACH ROW
BEGIN
    IF :NEW.data_emissione_multa > SYSDATE THEN
        RAISE_APPLICATION_ERROR(-20001, 'La data di emissione della multa non può essere futura.');
    END IF;
END;

/*Inserimento funzionante*/
INSERT INTO Multa (numero_verbale_multa, data_emissione_multa, costo, codice_tesserino_multante, targa_multata)
VALUES ('00020', TO_DATE('01-07-2024', 'DD-MM-YYYY'), 150.50, 'VLNBTT0024', 'BF200FL'); 
/*Inserimento non funzionante*/
INSERT INTO Multa (numero_verbale_multa, data_emissione_multa, costo, codice_tesserino_multante, targa_multata)
VALUES ('00021', TO_DATE('04-07-2024', 'DD-MM-YYYY'), 150.50, 'VLNBTT0024', 'BF200FL'); 


/*Vincolo di controllo per il numero massimo di ore di turno per un poliziotto*/

CREATE OR REPLACE TRIGGER verifica_ore_turno_settimanali
BEFORE INSERT OR UPDATE ON Turno
FOR EACH ROW
DECLARE
    ore_totali NUMBER;
BEGIN
    SELECT SUM(ore) INTO ore_totali
    FROM Turno
    WHERE codice_tesserino_turnante = :NEW.codice_tesserino_turnante
      AND data_turno BETWEEN TRUNC(:NEW.data_turno, 'IW') AND TRUNC(:NEW.data_turno, 'IW') + 6; -- Calcolo della settimana

    IF ore_totali > 36 THEN  -- Limite settimanale di 36 ore
        RAISE_APPLICATION_ERROR(-20003, 'Il numero massimo di ore di turno settimanali per un poliziotto è 36.');
    END IF;
END;


/*Vincolo di controllo per la scadenza del documento*/
CREATE OR REPLACE TRIGGER verifica_scadenza_documento
BEFORE INSERT OR UPDATE ON Documento
FOR EACH ROW
BEGIN
    IF :NEW.scadenza < TRUNC(SYSDATE) THEN
        RAISE_APPLICATION_ERROR(-20004, 'Non è possibile inserire o modificare un documento scaduto.');
    END IF;
END;

/*Inserimento non funzionante*/
INSERT INTO Documento (numero_documento, tipo_documento, scadenza, data_di_rilascio, codice_ente_rilasciatario, CF_possessore)
VALUES ('CP94792VF', 'Passaporto', TO_DATE('14-06-2024', 'DD-MM-YYYY'), TO_DATE('15-06-2015', 'DD-MM-YYYY'), '0003221', '95LRAFCC');

/*Inserimento funzionante*/
INSERT INTO Documento (numero_documento, tipo_documento, scadenza, data_di_rilascio, codice_ente_rilasciatario, CF_possessore)
VALUES ('CP94792VF', 'Passaporto', TO_DATE('14-06-2025', 'DD-MM-YYYY'), TO_DATE('15-06-2015', 'DD-MM-YYYY'), '0003221', '95LRAFCC');

/*Vincolo integrità per utilizzo di un'attrezzatura già presa*/
CREATE OR REPLACE TRIGGER verifica_utilizzo_attrezzatura
BEFORE INSERT OR UPDATE ON Possiede
FOR EACH ROW
DECLARE
    attrezzatura_in_uso NUMBER;
BEGIN
    -- Controlla se l'attrezzatura è già in uso da un altro poliziotto nel periodo specificato
    SELECT COUNT(*)
    INTO attrezzatura_in_uso
    FROM Possiede
    WHERE codice_seriale_posseduto = :NEW.codice_seriale_posseduto
      AND (:NEW.data_utilizzo = data_utilizzo)
      AND (
          -- Controllo sovrapposizione dell'intervallo di tempo
          (:NEW.orario_inizio BETWEEN orario_inizio AND (orario_inizio + ore_di_acquisizione - 1))
          OR ((:NEW.orario_inizio + :NEW.ore_di_acquisizione - 1) BETWEEN orario_inizio AND (orario_inizio + ore_di_acquisizione - 1))
          OR (orario_inizio BETWEEN :NEW.orario_inizio AND (:NEW.orario_inizio + :NEW.ore_di_acquisizione - 1))
      );

    -- Se l'attrezzatura è già in uso, solleva un errore
    IF attrezzatura_in_uso > 0 THEN
        RAISE_APPLICATION_ERROR(-20008, 'L''attrezzatura è già in uso da un altro poliziotto.');
    END IF;
END;

/*Non funzionante perchè un altro sta già usando l'attrezzatura in quella giornata*/
insert into Possiede(codice_seriale_posseduto, codice_tesserino_possessore, data_utilizzo, orario_inizio, ore_di_acquisizione)
values(
    '00000004KB','VNCDCR1013', to_date('12/02/2024','dd/mm/yyyy'), 22, 6
);


CREATE OR REPLACE TRIGGER verifica_poliziotto_assegnato_ufficio
BEFORE INSERT ON Denuncia
FOR EACH ROW
DECLARE
    poliziotto_assegnato NUMBER;
BEGIN
    SELECT COUNT(*) INTO poliziotto_assegnato
    FROM UfficioDenunce
    WHERE numero = :NEW.numero_ufficio -- Utilizziamo la colonna 'numero' come chiave primaria
      AND codice_tesserino_ctrl IS NOT NULL;

    IF poliziotto_assegnato = 0 THEN
        RAISE_APPLICATION_ERROR(-20015, 'Non è possibile registrare una denuncia in un ufficio senza un poliziotto assegnato.');
    END IF;
END;

/*Non funzionante, '100' non è stato creato, funziona se mettessi '007'*/
insert into Denuncia(numero_verbale_denuncia,numero_ufficio,data_emissione)
values(
    '00100','100',to_date('04/03/2023', 'dd,mm,yyyy') 
);

/*Fa in modo da non far mettere lo stesso poliziotto che è gia in servizio nelle ore in cui è già in servizio*/
CREATE OR REPLACE TRIGGER check_poliziotto_turno
BEFORE INSERT OR UPDATE ON Turno
FOR EACH ROW
DECLARE
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM Turno
    WHERE codice_tesserino_turnante = :NEW.codice_tesserino_turnante
      AND data_turno = :NEW.data_turno
      AND (
           (:NEW.ore BETWEEN 1 AND 24) -- Assicurarsi che l'ora sia valida
           OR
           (:NEW.ore + (SELECT NVL(SUM(ore), 0) FROM Turno WHERE codice_tesserino_turnante = :NEW.codice_tesserino_turnante AND data_turno = :NEW.data_turno) <= 24)
          );
    
    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Il poliziotto ha già un turno assegnato per queste ore nella stessa giornata.');
    END IF;
END;