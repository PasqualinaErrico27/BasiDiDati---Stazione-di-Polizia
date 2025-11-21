drop table Possiede cascade constraints;
drop table Controlla cascade constraints;
drop table Depone cascade constraints;
drop table Riguarda cascade constraints;
drop table Documento cascade constraints;
drop table Ente cascade constraints;
drop table Multa cascade constraints;
drop table VeicoloEsaminato cascade constraints;
drop table Attrezzatura cascade constraints;
drop table Turno cascade constraints;
drop table Arma cascade constraints;
drop table Denuncia cascade constraints;
drop table UfficioDenunce cascade constraints;
drop table Poliziotto cascade constraints;
drop table Persona cascade constraints;

create table Persona(   
	CF char(8) primary key,   
	nome varchar (20) not null,    
    cognome varchar (20) not null,   
    data_nascita date not null,   
    telefono varchar (16) not null,   
    id_vittima  number(10,0) unique,   
    id_imputato number(10,0) unique,   
    constraint CF_corretto check(REGEXP_LIKE(CF,'^\d{2}[A-Z]{6}$'))
);

create table Poliziotto( 
    codice_tesserino char(10) primary key, 
    nome_poliziotto varchar (20) not null,
    cognome_poliziotto varchar(20) not null, 
    CF_poliziotto char(8) not null unique,
    constraint CF_corretto_poliziotto check(REGEXP_LIKE(CF_poliziotto,'^\d{2}[A-Z]{6}$')),
    constraint codice_tesserino_corretto check (REGEXP_LIKE(codice_tesserino,'^[A-Z]{6}\d{4}$'))
);

create table UfficioDenunce( 
    numero char(3) primary key, 
    codice_tesserino_ctrl char(10) not null,
    nome_dipendente_assegnato varchar(20) not null,
    constraint fkTesserino foreign key (codice_tesserino_ctrl) references Poliziotto(codice_tesserino),
    constraint codice_tesserino_corretto_ctrl check (REGEXP_LIKE(codice_tesserino_ctrl,'^[A-Z]{6}\d{4}$'))
);

create table Denuncia( 
    numero_verbale_denuncia number(5,0) primary key, 
    numero_ufficio char(3) not null,
    data_emissione date not null,
    constraint fkNumUff foreign key (numero_ufficio) references UfficioDenunce(numero)
);

create table Arma( 
    codice_arma char(10) primary key, 
    tipo varchar(20) not null,
    modello varchar(20) not null,
    codice_tesserino_arma char(10) not null,
    constraint fkTesserinoArma foreign key (codice_tesserino_arma) references Poliziotto (codice_tesserino),
    constraint codice_arma_corretto check (REGEXP_LIKE(codice_arma,'^\d{8}[A-Z]{2}$')),
    constraint codice_tesserino_corretto_arma check (REGEXP_LIKE(codice_tesserino_arma, '^[A-Z]{6}\d{4}$'))
);

create table Turno( 
    codice_tesserino_turnante char (10) not null,
    data_turno date not null,
    ora_inizio number(2,0) not null,
    ore number(2,0) not null, 
    sede varchar(20) not null,
    primary key (codice_tesserino_turnante, data_turno, ora_inizio),
    constraint fkTesserinoTurno foreign key (codice_tesserino_turnante) references Poliziotto (codice_tesserino),
    constraint codice_tesserino_corretto_turnante check (REGEXP_LIKE(codice_tesserino_turnante, '^[A-Z]{6}\d{4}$')),
    constraint ora_valida check (ora_inizio >= 0 and ora_inizio <= 23 and ore > 0 and ora_inizio + ore <= 24)
);

create table Attrezzatura( 
	codice_seriale char(10) primary key, 
    tipo_attrezzatura varchar(25) not null check (tipo_attrezzatura in ('Kit base', 'Kit medio', 'Kit operazioni speciali')),
    constraint codice_seriale_corretto check (REGEXP_LIKE(codice_seriale,'^\d{8}[A-Z]{2}$'))
);

create table VeicoloEsaminato( 
	targa char(7) primary key, 
    modello_veicolo varchar(20) not null, 
    tipo_di_alimentazione varchar(20) not null check (tipo_di_alimentazione in ('Diesel', 'Benzina', 'GPL', 'Metano', 'Ibrido', 'Elettrico')), 
    codice_telaio char(10) not null unique, 
    CF_intestatario char (8) not null,
    constraint fkCFintest foreign key (CF_intestatario) references Persona(CF),
    constraint CF_corretto_intestatario check(REGEXP_LIKE(CF_intestatario, '^\d{2}[A-Z]{6}$')),
    constraint codice_telaio_corretto check (REGEXP_LIKE(codice_telaio,'^\d{10}$'))
);

create table Multa( 
	numero_verbale_multa char(5) primary key, 
    data_emissione_multa date not null, 
    costo number (5,2) not null check (costo > 0),
    codice_tesserino_multante char(10) not null,
    targa_multata char(7) not null,
    constraint fkTesserinoMulta foreign key (codice_tesserino_multante) references Poliziotto(codice_tesserino),
    constraint fkTargaMulta foreign key (targa_multata) references VeicoloEsaminato(targa),
    constraint codice_tesserino_corretto_multante check (REGEXP_LIKE(codice_tesserino_multante,'^[A-Z]{6}\d{4}$'))
);

create table Ente( 
    codice_ente char(7) primary key, 
    tipo_ente varchar(20) not null, 
    via_ente varchar(20) not null, 
    cap_ente char(5) not null, 
    citta varchar(30) not null,
    constraint codice_ente_corretto check (REGEXP_LIKE(codice_ente,'^\d{7}$'))
);

create table Documento( 
	numero_documento varchar(10) primary key,
    tipo_documento varchar(20) not null, 
    scadenza date not null, 
    data_di_rilascio date not null,
    codice_ente_rilasciatario char(7) not null,
    CF_possessore char(8) not null,
    constraint fkEnteRilascia foreign key (codice_ente_rilasciatario) references Ente(codice_ente),
    constraint fkCFPossesso foreign key (CF_possessore) references Persona(CF),
    constraint CF_corretto_possessore check(REGEXP_LIKE(CF_possessore,'^\d{2}[A-Z]{6}$')),
    constraint Codice_ente_corretto_rilasciatario check(REGEXP_LIKE(codice_ente_rilasciatario,'^\d{7}$'))
);

create table Riguarda( 
    CF_imputato char(8), 
    numero_verbale_a_carico number(5,0) not null, 
    primary key (CF_imputato, numero_verbale_a_carico), 
    constraint fkCFImp foreign key (CF_imputato) references Persona(CF), 
    constraint fkVerbaleImp foreign key (numero_verbale_a_carico) references Denuncia(numero_verbale_denuncia),
    constraint CF_corretto_imputato check(REGEXP_LIKE(CF_imputato,'^\d{2}[A-Z]{6}$'))
);

create table Depone( 
    CF_vittima char(8), 
    numero_verbale_deposto number(5,0) not null, 
    primary key (CF_vittima, numero_verbale_deposto), 
    constraint fkCFVitt foreign key (CF_vittima) references Persona(CF), 
    constraint fkVerbaleVitt foreign key (numero_verbale_deposto) references Denuncia(numero_verbale_denuncia), 
    constraint CF_corretto_vittima check(REGEXP_LIKE(CF_vittima,'^\d{2}[A-Z]{6}$'))
);

create table Controlla( 
	codice_tesserino_controllore char(10) not null, 
    CF_persona_controllata char(8) not null, 
    data_controllo date not null, 
    primary key(codice_tesserino_controllore, CF_persona_controllata, data_controllo), 
    constraint fkCTcontr foreign key (codice_tesserino_controllore) references Poliziotto(codice_tesserino), 
    constraint fkCFcontrollata foreign key (CF_persona_controllata) references Persona(CF),
    constraint CF_corretto_persona_controllata check (REGEXP_LIKE(CF_persona_controllata, '^\d{2}[A-Z]{6}$')),
    constraint codice_tesserino_corretto_controllore check (REGEXP_LIKE(codice_tesserino_controllore, '^[A-Z]{6}\d{4}$'))
);

create table Possiede(
    codice_seriale_posseduto char(10) not null,
    codice_tesserino_possessore char(10) not null,
    data_utilizzo date not null,
    orario_inizio number(2,0) not null,
    ore_di_acquisizione number(2,0) not null,

    primary key(codice_seriale_posseduto, codice_tesserino_possessore, data_utilizzo, orario_inizio),
    constraint fkCTcontrposs foreign key (codice_tesserino_possessore) references Poliziotto(codice_tesserino),
    constraint fkCSposs foreign key (codice_seriale_posseduto) references Attrezzatura(codice_seriale),
    constraint codice_seriale_controllato_posseduto check (REGEXP_LIKE(codice_seriale_posseduto, '^\d{8}[A-Z]{2}$')),
    constraint codice_tesserino_corretto_possessore check (REGEXP_LIKE(codice_tesserino_possessore, '^[A-Z]{6}\d{4}$')),
    constraint check_orario_inizio check (orario_inizio >= 0 and orario_inizio <= 23),
    constraint check_ore check (ore_di_acquisizione >= 0)
);