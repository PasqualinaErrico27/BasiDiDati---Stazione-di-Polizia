--ASSUMI POLIZIOTTO (COLONNELLO)
CREATE OR REPLACE PROCEDURE assumiPoliziotto(
    p_codice_tesserino IN Poliziotto.codice_tesserino%TYPE,
    p_nome_poliziotto IN Poliziotto.nome_poliziotto%TYPE,
    p_cognome_poliziotto IN Poliziotto.cognome_poliziotto%TYPE,
    p_CF_poliziotto IN Poliziotto.CF_poliziotto%TYPE
) IS
BEGIN
    -- Controlla se tutti i parametri sono forniti
    IF p_codice_tesserino IS NULL OR p_nome_poliziotto IS NULL OR 
       p_cognome_poliziotto IS NULL OR p_CF_poliziotto IS NULL THEN
        RAISE_APPLICATION_ERROR(-20000, 'Tutti i dati devono essere forniti.');
    END IF;
    
    -- Controlla se il CF del poliziotto è valido
    IF NOT REGEXP_LIKE(p_CF_poliziotto, '^\d{2}[A-Z]{6}$') THEN
        RAISE_APPLICATION_ERROR(-20001, 'Codice Fiscale del Poliziotto non valido.');
    END IF;
    
    -- Controlla se il codice tesserino è valido
    IF NOT REGEXP_LIKE(p_codice_tesserino, '^[A-Z]{6}\d{4}$') THEN
        RAISE_APPLICATION_ERROR(-20002, 'Codice Tesserino non valido.');
    END IF;
    
    -- Inserisce il nuovo poliziotto nella tabella Poliziotto
    INSERT INTO Poliziotto (codice_tesserino, nome_poliziotto, cognome_poliziotto, CF_poliziotto)
    VALUES (p_codice_tesserino, p_nome_poliziotto, p_cognome_poliziotto, p_CF_poliziotto);
    
    -- Conferma l'operazione
    COMMIT;
    
    DBMS_OUTPUT.PUT_LINE('Poliziotto inserito con successo.');
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        -- Gestisce la violazione della chiave unica o primaria
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Violazione della chiave unica o primaria: il codice tesserino o il CF è già presente.');
        RAISE_APPLICATION_ERROR(-20003, 'Violazione della chiave unica o primaria: il codice tesserino o il CF è già presente.');
    WHEN VALUE_ERROR THEN
        -- Gestisce errori di conversione di tipo
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Errore di conversione di tipo nei valori forniti.');
        RAISE_APPLICATION_ERROR(-20004, 'Errore di conversione di tipo nei valori forniti.');
END assumiPoliziotto;


BEGIN
    assumiPoliziotto(
        p_codice_tesserino => 'MARRSS1010',
        p_nome_poliziotto => 'Mario',
        p_cognome_poliziotto => 'Rossi',
        p_CF_poliziotto => '12RSSMAR'
    );
END;

-- CREA TURNO (COLONNELLO)

CREATE OR REPLACE PROCEDURE creaTurno(
    p_codice_tesserino_turnante IN Turno.codice_tesserino_turnante%TYPE,
    p_data_turno IN Turno.data_turno%TYPE,
    p_ora_inizio IN Turno.ora_inizio%TYPE,
    p_ore IN Turno.ore%TYPE,
    p_sede IN Turno.sede%TYPE
) IS
BEGIN
    -- Controlla se tutti i parametri sono forniti
    IF p_codice_tesserino_turnante IS NULL OR p_data_turno IS NULL OR 
       p_ora_inizio IS NULL OR p_ore IS NULL OR p_sede IS NULL THEN
        RAISE_APPLICATION_ERROR(-20000, 'Tutti i dati devono essere forniti.');
    END IF;

    -- Controlla se il codice tesserino è valido
    IF NOT REGEXP_LIKE(p_codice_tesserino_turnante, '^[A-Z]{6}\d{4}$') THEN
        RAISE_APPLICATION_ERROR(-20001, 'Codice Tesserino non valido.');
    END IF;

    -- Controlla se l'ora di inizio e le ore del turno sono valide
    IF p_ora_inizio < 0 OR p_ora_inizio > 23 OR p_ore <= 0 OR p_ora_inizio + p_ore > 24 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Ora di inizio o durata del turno non valida.');
    END IF;

    -- Inserisce il nuovo turno nella tabella Turno
    INSERT INTO Turno (codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
    VALUES (p_codice_tesserino_turnante, p_data_turno, p_ora_inizio, p_ore, p_sede);

    -- Conferma l'operazione
    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Turno inserito con successo.');
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        -- Gestisce la violazione della chiave unica o primaria
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Violazione della chiave unica o primaria: il turno è già presente.');
        RAISE_APPLICATION_ERROR(-20003, 'Violazione della chiave unica o primaria: il turno è già presente.');
    WHEN VALUE_ERROR THEN
        -- Gestisce errori di conversione di tipo
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Errore di conversione di tipo nei valori forniti.');
        RAISE_APPLICATION_ERROR(-20004, 'Errore di conversione di tipo nei valori forniti.');
END creaTurno;

BEGIN
    creaTurno(
        p_codice_tesserino_turnante => 'MARRSS1010',
        p_data_turno => DATE '2024-07-06',
        p_ora_inizio => 8,
        p_ore => 8,
        p_sede => 'Area11'
    );
END;


--RIVENDICA ARMA (ARMIERE)

CREATE OR REPLACE PROCEDURE rivendicaArmi(
    p_codice_arma IN Arma.codice_arma%TYPE,
    p_tipo IN Arma.tipo%TYPE,
    p_modello IN Arma.modello%TYPE,
    p_codice_tesserino_arma IN Arma.codice_tesserino_arma%TYPE
) IS
BEGIN
    -- Controlla se tutti i parametri sono forniti
    IF p_codice_arma IS NULL OR p_tipo IS NULL OR 
       p_modello IS NULL OR p_codice_tesserino_arma IS NULL THEN
        RAISE_APPLICATION_ERROR(-20000, 'Tutti i dati devono essere forniti.');
    END IF;

    -- Controlla se il codice arma è valido
    IF NOT REGEXP_LIKE(p_codice_arma, '^\d{8}[A-Z]{2}$') THEN
        RAISE_APPLICATION_ERROR(-20001, 'Codice Arma non valido.');
    END IF;

    -- Controlla se il codice tesserino è valido
    IF NOT REGEXP_LIKE(p_codice_tesserino_arma, '^[A-Z]{6}\d{4}$') THEN
        RAISE_APPLICATION_ERROR(-20002, 'Codice Tesserino non valido.');
    END IF;

    -- Inserisce la nuova arma nella tabella Arma
    INSERT INTO Arma (codice_arma, tipo, modello, codice_tesserino_arma)
    VALUES (p_codice_arma, p_tipo, p_modello, p_codice_tesserino_arma);

    -- Conferma l'operazione
    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Arma inserita con successo.');
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        -- Gestisce la violazione della chiave unica o primaria
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Violazione della chiave unica o primaria: il codice arma è già presente.');
        RAISE_APPLICATION_ERROR(-20003, 'Violazione della chiave unica o primaria: il codice arma è già presente.');
    WHEN VALUE_ERROR THEN
        -- Gestisce errori di conversione di tipo
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Errore di conversione di tipo nei valori forniti.');
        RAISE_APPLICATION_ERROR(-20004, 'Errore di conversione di tipo nei valori forniti.');
END rivendicaArmi;


BEGIN
    rivendicaArmi(
        p_codice_arma => '12345678PI',
        p_tipo => 'Pistola',
        p_modello => 'Glock 17',
        p_codice_tesserino_arma => 'MARRSS1010'
    );
END;

--RIVENDICA ATTREZZATURA (ARMIERE)
CREATE OR REPLACE PROCEDURE rivendicaAttrezzatura(
    p_codice_seriale IN Attrezzatura.codice_seriale%TYPE,
    p_tipo_attrezzatura IN Attrezzatura.tipo_attrezzatura%TYPE
) IS
BEGIN
    -- Controlla se tutti i parametri sono forniti
    IF p_codice_seriale IS NULL OR p_tipo_attrezzatura IS NULL THEN
        RAISE_APPLICATION_ERROR(-20000, 'Tutti i dati devono essere forniti.');
    END IF;

    -- Controlla se il codice seriale è valido
    IF NOT REGEXP_LIKE(p_codice_seriale, '^\d{8}[A-Z]{2}$') THEN
        RAISE_APPLICATION_ERROR(-20001, 'Codice Seriale non valido.');
    END IF;

    -- Controlla se il tipo di attrezzatura è valido
    IF NOT p_tipo_attrezzatura IN ('Kit base', 'Kit medio', 'Kit operazioni speciali') THEN
        RAISE_APPLICATION_ERROR(-20002, 'Tipo di attrezzatura non valido.');
    END IF;

    -- Inserisce la nuova attrezzatura nella tabella Attrezzatura
    INSERT INTO Attrezzatura (codice_seriale, tipo_attrezzatura)
    VALUES (p_codice_seriale, p_tipo_attrezzatura);

    -- Conferma l'operazione
    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Attrezzatura registrata con successo.');
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        -- Gestisce la violazione della chiave unica o primaria
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Violazione della chiave unica o primaria: il codice seriale è già presente.');
        RAISE_APPLICATION_ERROR(-20003, 'Violazione della chiave unica o primaria: il codice seriale è già presente.');
    WHEN VALUE_ERROR THEN
        -- Gestisce errori di conversione di tipo
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Errore di conversione di tipo nei valori forniti.');
        RAISE_APPLICATION_ERROR(-20004, 'Errore di conversione di tipo nei valori forniti.');
END rivendicaAttrezzatura;

BEGIN
    rivendicaAttrezzatura(
        p_codice_seriale => '12345678AB',
        p_tipo_attrezzatura => 'Kit base'
    );
END;

--ASSEGNA ATTREZZATURA (COLONNELLO)

CREATE OR REPLACE PROCEDURE assegnaAttrezzatura(
    p_codice_seriale IN Attrezzatura.codice_seriale%TYPE,
    p_codice_tesserino IN Poliziotto.codice_tesserino%TYPE,
    p_data_utilizzo IN Possiede.data_utilizzo%TYPE,
    p_orario_inizio IN Possiede.orario_inizio%TYPE,
    p_ore_di_acquisizione IN Possiede.ore_di_acquisizione%TYPE
) IS
    v_attrezzatura_count NUMBER;
    v_poliziotto_count NUMBER;
BEGIN
    -- Controlla se tutti i parametri sono forniti
    IF p_codice_seriale IS NULL OR p_codice_tesserino IS NULL OR 
       p_data_utilizzo IS NULL OR p_orario_inizio IS NULL OR p_ore_di_acquisizione IS NULL THEN
        RAISE_APPLICATION_ERROR(-20000, 'Tutti i dati devono essere forniti.');
    END IF;

    -- Controlla se l'attrezzatura è registrata nel sistema
    SELECT COUNT(*)
    INTO v_attrezzatura_count
    FROM Attrezzatura
    WHERE codice_seriale = p_codice_seriale;

    IF v_attrezzatura_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20005, 'Attrezzatura non registrata nel sistema.');
    END IF;

    -- Controlla se il poliziotto esiste
    SELECT COUNT(*)
    INTO v_poliziotto_count
    FROM Poliziotto
    WHERE codice_tesserino = p_codice_tesserino;

    IF v_poliziotto_count = 0 THEN
        RAISE_APPLICATION_ERROR(-20006, 'Poliziotto non trovato nel sistema.');
    END IF;

    -- Inserisce l'assegnazione nella tabella Possiede
    INSERT INTO Possiede (codice_seriale_posseduto, codice_tesserino_possessore, data_utilizzo, orario_inizio, ore_di_acquisizione)
    VALUES (p_codice_seriale, p_codice_tesserino, p_data_utilizzo, p_orario_inizio, p_ore_di_acquisizione);

    -- Conferma l'operazione
    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Attrezzatura assegnata con successo.');
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        -- Gestisce la violazione della chiave unica o primaria
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Violazione della chiave unica o primaria: l''assegnazione esiste già.');
        RAISE_APPLICATION_ERROR(-20007, 'Violazione della chiave unica o primaria: l''assegnazione esiste già.');
    WHEN VALUE_ERROR THEN
        -- Gestisce errori di conversione di tipo
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Errore di conversione di tipo nei valori forniti.');
        RAISE_APPLICATION_ERROR(-20008, 'Errore di conversione di tipo nei valori forniti.');
END assegnaAttrezzatura;

BEGIN
    assegnaAttrezzatura(
        p_codice_seriale => '12345678AB',
        p_codice_tesserino => 'MARRSS1010',
        p_data_utilizzo => TO_DATE('07/06/2024', 'DD/MM/YYYY'),
        p_orario_inizio => 10,
        p_ore_di_acquisizione => 2
    );
END;


-- INSERISCI PERSONA (POLIZIOTTO)
CREATE OR REPLACE PROCEDURE InserisciPersona (
    p_CF IN VARCHAR2,
    p_nome IN VARCHAR2,
    p_cognome IN VARCHAR2,
    p_data_nascita IN DATE,
    p_telefono IN VARCHAR2,
    p_id_vittima IN NUMBER,
    p_id_imputato IN NUMBER
)
IS
    v_data_nascita VARCHAR2(10);
BEGIN
    -- Formatta la data di nascita nel formato DD/MM/YYYY
    v_data_nascita := TO_CHAR(p_data_nascita, 'DD/MM/YYYY');

    -- Inserisce la persona nella tabella Persona
    INSERT INTO Persona (CF, nome, cognome, data_nascita, telefono, id_vittima, id_imputato)
    VALUES (p_CF, p_nome, p_cognome, TO_DATE(v_data_nascita, 'DD/MM/YYYY'), p_telefono, p_id_vittima, p_id_imputato);

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Persona inserita con successo');
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Errore: Violazione di un vincolo di chiave unica.');
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Errore generico durante l''inserimento della persona.');
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END InserisciPersona;


BEGIN
    InserisciPersona('12RSSFLP', 'Filippo', 'Rossi', TO_DATE('01/01/1980', 'dd/mm/yyyy'), '3892039481', NULL, NULL);
END;

--PRELEVA DENUNCIA (Dipendente)
CREATE OR REPLACE PROCEDURE prelevaDenuncia (
    p_numero_verbale IN Denuncia.numero_verbale_denuncia%TYPE,
    p_numero_ufficio IN Denuncia.numero_ufficio%TYPE,
    p_data_emissione IN DATE,
    p_id_vittima_1 IN Persona.id_vittima%TYPE,
    p_id_vittima_2 IN Persona.id_vittima%TYPE DEFAULT NULL,
    p_id_imputato IN Persona.id_imputato%TYPE DEFAULT NULL
)
IS
    v_numero_vittima NUMBER;
    v_numero_imputato NUMBER;
    v_cf_imputato Persona.CF%TYPE;
BEGIN
    -- Controlla se esiste una vittima 1 con l'id specificato
    SELECT COUNT(*)
    INTO v_numero_vittima
    FROM Persona
    WHERE id_vittima = p_id_vittima_1;

    -- Se non esiste, inserisce la persona come vittima 1
    IF v_numero_vittima = 0 THEN
        INSERT INTO Persona (CF, nome, cognome, data_nascita, telefono, id_vittima)
        VALUES ('CF_' || TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS'), 'Nome Vittima 1', 'Cognome Vittima 1', SYSDATE, '0000000000', p_id_vittima_1);
    END IF;

    -- Se p_id_vittima_2 non è NULL, controlla se esiste una vittima 2 con l'id specificato
    IF p_id_vittima_2 IS NOT NULL THEN
        SELECT COUNT(*)
        INTO v_numero_vittima
        FROM Persona
        WHERE id_vittima = p_id_vittima_2;

        -- Se non esiste, inserisce la persona come vittima 2
        IF v_numero_vittima = 0 THEN
            INSERT INTO Persona (CF, nome, cognome, data_nascita, telefono, id_vittima)
            VALUES ('CF_' || TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS'), 'Nome Vittima 2', 'Cognome Vittima 2', SYSDATE, '0000000000', p_id_vittima_2);
        END IF;
    END IF;

    -- Se p_id_imputato è NULL, assegnare '11AAAAAA' come CF dell'imputato
    IF p_id_imputato IS NULL THEN
        v_cf_imputato := '11AAAAAA';

        -- Controlla se '11AAAAAA' esiste nella tabella Persona
        SELECT COUNT(*)
        INTO v_numero_imputato
        FROM Persona
        WHERE CF = v_cf_imputato;

        -- Se '11AAAAAA' non esiste, inserisce l'imputato ignoto nella tabella Persona
        IF v_numero_imputato = 0 THEN
            INSERT INTO Persona (CF, nome, cognome, data_nascita, telefono)
            VALUES (v_cf_imputato, 'Imputato Ignoto', 'N/A', DATE '1900-01-01', '0000000000');
        END IF;
    ELSE
        -- Controlla se esiste un imputato con l'id specificato
        SELECT COUNT(*)
        INTO v_numero_imputato
        FROM Persona
        WHERE id_imputato = p_id_imputato;

        -- Se non esiste, inserisce la persona come imputato
        IF v_numero_imputato = 0 THEN
            v_cf_imputato := 'CF_' || TO_CHAR(SYSDATE, 'YYYYMMDDHH24MISS');
            INSERT INTO Persona (CF, nome, cognome, data_nascita, telefono, id_imputato)
            VALUES (v_cf_imputato, 'Nome Imputato', 'Cognome Imputato', SYSDATE, '0000000000', p_id_imputato);
        ELSE
            SELECT CF
            INTO v_cf_imputato
            FROM Persona
            WHERE id_imputato = p_id_imputato;
        END IF;
    END IF;

    -- Inserisce la denuncia
    INSERT INTO Denuncia (numero_verbale_denuncia, numero_ufficio, data_emissione)
    VALUES (p_numero_verbale, p_numero_ufficio, p_data_emissione);

    -- Inserisce l'associazione tra vittima 1 e denuncia
    INSERT INTO Depone (CF_vittima, numero_verbale_deposto)
    VALUES ((SELECT CF FROM Persona WHERE id_vittima = p_id_vittima_1), p_numero_verbale);

    -- Inserisce l'associazione tra vittima 2 e denuncia se p_id_vittima_2 non è NULL
    IF p_id_vittima_2 IS NOT NULL THEN
        INSERT INTO Depone (CF_vittima, numero_verbale_deposto)
        VALUES ((SELECT CF FROM Persona WHERE id_vittima = p_id_vittima_2), p_numero_verbale);
    END IF;

    -- Inserisce l'associazione tra imputato e denuncia
    INSERT INTO Riguarda (CF_imputato, numero_verbale_a_carico)
    VALUES (v_cf_imputato, p_numero_verbale);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Denuncia inserita con successo');
EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Errore: Violazione di un vincolo di chiave unica.');
    WHEN NO_DATA_FOUND THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Errore: Nessun dato trovato.');
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Errore generico durante l''inserimento della denuncia.');
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END prelevaDenuncia;



BEGIN
    prelevaDenuncia(00022, '002', TO_DATE('04/07/2024', 'DD/MM/YYYY'), 0000000001, 0000000002, 0000000001);
END;
-- Se al posto dell'ultimo id metto 0000000000 allora ottengo un codice fiscale fittizio 11AAAAAA che intende una denuncia verso ignoti

--DEFINISCI MULTA
CREATE OR REPLACE PROCEDURE definisciMulta (
    p_numero_verbale_multa IN VARCHAR2,
    p_data_emissione_multa IN VARCHAR2,
    p_costo IN NUMBER,
    p_codice_tesserino_multante IN VARCHAR2,
    p_targa_multata IN CHAR
)
AS
    v_data_emissione DATE;
BEGIN
    -- Converti la data da VARCHAR2 a DATE
    v_data_emissione := TO_DATE(p_data_emissione_multa, 'dd/mm/yyyy');

    -- Inserisce la multa nel database
    INSERT INTO Multa (numero_verbale_multa, data_emissione_multa, costo, codice_tesserino_multante, targa_multata)
    VALUES (p_numero_verbale_multa, v_data_emissione, p_costo, p_codice_tesserino_multante, p_targa_multata);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Multa inserita correttamente.');
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Errore durante l''inserimento della multa: ' || SQLERRM);
END definisciMulta;


BEGIN
    definisciMulta(
        p_numero_verbale_multa => '00101',
        p_data_emissione_multa => '05/07/2024',
        p_costo => 150.00,
        p_codice_tesserino_multante => 'MARRSS1010',
        p_targa_multata => 'FF121MN'
    );
END;

--DEFINISCI VEICOLO ESAMINATO
CREATE OR REPLACE PROCEDURE definisciVeicoloEsaminato (
    p_targa IN CHAR,
    p_modello_veicolo IN VARCHAR2,
    p_tipo_di_alimentazione IN VARCHAR2,
    p_codice_telaio IN CHAR,
    p_CF_intestatario IN CHAR
)
AS
BEGIN
    -- Inserisce il veicolo esaminato nel database
    INSERT INTO VeicoloEsaminato (targa, modello_veicolo, tipo_di_alimentazione, codice_telaio, CF_intestatario)
    VALUES (p_targa, p_modello_veicolo, p_tipo_di_alimentazione, p_codice_telaio, p_CF_intestatario);

    COMMIT;

    DBMS_OUTPUT.PUT_LINE('Veicolo esaminato inserito correttamente.');
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Errore durante l''inserimento del veicolo esaminato: ' || SQLERRM);
END definisciVeicoloEsaminato;

BEGIN
    definisciVeicoloEsaminato(
        p_targa => 'AB123CD',
        p_modello_veicolo => 'Fiat Panda',
        p_tipo_di_alimentazione => 'Benzina',
        p_codice_telaio => '1234567890',
        p_CF_intestatario => '78CMSFRN' --Tenendo in considerazione che le persone devono essere presenti già nel database
    );
END;

--REGISTRA DOCUMENTO
    CREATE OR REPLACE PROCEDURE registraDocumento (
        p_numero_documento IN VARCHAR2,
        p_tipo_documento IN VARCHAR2,
        p_scadenza IN DATE,
        p_data_di_rilascio IN DATE,
        p_codice_ente_rilasciatore IN CHAR,
        p_CF_possessore IN CHAR -- Tenendo in considerazione che la persona in questione è già stata registrata nel database (In persona)
    )
    AS
    BEGIN
        -- Inserisce il documento nel database
        INSERT INTO Documento (numero_documento, tipo_documento, scadenza, data_di_rilascio, codice_ente_rilasciatario, CF_possessore)
        VALUES (p_numero_documento, p_tipo_documento, p_scadenza, p_data_di_rilascio, p_codice_ente_rilasciatore, p_CF_possessore);

        COMMIT;

        DBMS_OUTPUT.PUT_LINE('Documento registrato correttamente.');
    EXCEPTION
        WHEN OTHERS THEN
            ROLLBACK;
            DBMS_OUTPUT.PUT_LINE('Errore durante la registrazione del documento: ' || SQLERRM);
    END registraDocumento;

BEGIN
    registraDocumento(
        p_numero_documento => 'MI96444839',
        p_tipo_documento => 'Patente',
        p_scadenza => '31/12/2033',  -- Formato dd/mm/yyyy
        p_data_di_rilascio => '01/01/2023',  -- Formato dd/mm/yyyy
        p_codice_ente_rilasciatore => '0001220',
        p_CF_possessore => '78CMSFRN'
    );
END;
