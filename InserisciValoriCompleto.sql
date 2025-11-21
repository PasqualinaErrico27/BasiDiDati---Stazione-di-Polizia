delete from Riguarda;
delete from Depone;
delete from Controlla;
delete from Possiede;
delete from Multa;
delete from VeicoloEsaminato;
delete from Arma;
delete from Turno;
delete from Denuncia;
delete from UfficioDenunce;
delete from Documento;
delete from Attrezzatura;
delete from Ente;
delete from Persona;
delete from Poliziotto;

/*Poliziotto*/
insert into Poliziotto (codice_tesserino, nome_poliziotto, cognome_poliziotto, CF_poliziotto)
values(
    'MTTGVN0010',
	'Mattia',
	'Giovinelli',
	'05GVNMTT'
);

insert into Poliziotto (codice_tesserino, nome_poliziotto, cognome_poliziotto, CF_poliziotto)
values(
    'LCUDDT0100',
	'Luca',
	'Diodato',
	'07DDTLCU'
);

insert into Poliziotto (codice_tesserino, nome_poliziotto, cognome_poliziotto, CF_poliziotto)
values(
    'FDRPRM1110',
	'Federica',
	'Parmi',
	'10PRMFDR'
);

insert into Poliziotto (codice_tesserino, nome_poliziotto, cognome_poliziotto, CF_poliziotto)
values(
    'LSESPS1211',
	'Elisa',
	'Esposito',
	'13SPSLSE'
);

insert into Poliziotto (codice_tesserino, nome_poliziotto, cognome_poliziotto, CF_poliziotto)
values(
    'GBRBCC1002',
	'Gabriele',
	'Bocci',
	'12BCCGBR'
);

insert into Poliziotto (codice_tesserino, nome_poliziotto, cognome_poliziotto, CF_poliziotto)
values(
    'VTTPLL1012',
	'Vittorio',
	'Pellicani',
	'13PLLVTT'
);

insert into Poliziotto (codice_tesserino, nome_poliziotto, cognome_poliziotto, CF_poliziotto)
values(
    'GNNSPS0021',
	'Gennaro',
	'Esposito',
	'11SPSGNN'
);

insert into Poliziotto (codice_tesserino, nome_poliziotto, cognome_poliziotto, CF_poliziotto)
values(
    'FRCTFN0090',
	'Francesco',
	'Tufano',
	'12TFNFRC'
);

insert into Poliziotto (codice_tesserino, nome_poliziotto, cognome_poliziotto, CF_poliziotto)
values(
    'GRGMLT0091',
	'Giorgio',
	'Melito',
	'20MLTGRG'
);

insert into Poliziotto (codice_tesserino, nome_poliziotto, cognome_poliziotto, CF_poliziotto)
values(
    'VLNBTT0024',
	'Valentina',
	'Battaglia',
	'24BTTVLN'
);

insert into Poliziotto (codice_tesserino, nome_poliziotto, cognome_poliziotto, CF_poliziotto)
values(
    'PLATSS0909',
	'Paolo',
	'Tessitore',
	'22TSSPLA'
);

insert into Poliziotto (codice_tesserino, nome_poliziotto, cognome_poliziotto, CF_poliziotto)
values(
    'GNLMNN0304',
	'Gianluca',
	'Manni',
	'23MNNGNL'
);

insert into Poliziotto (codice_tesserino, nome_poliziotto, cognome_poliziotto, CF_poliziotto)
values(
    'GVNLCR0809',
	'Giovanni',
	'Lucarelli',
	'12LCRGVN'
);

insert into Poliziotto (codice_tesserino, nome_poliziotto, cognome_poliziotto, CF_poliziotto)
values(
    'GPGMSC0900',
	'Giuseppe',
	'Moscati',
	'21MSCGSP'
);

insert into Poliziotto (codice_tesserino, nome_poliziotto, cognome_poliziotto, CF_poliziotto)
values(
    'VNCDCR1013',
	'Vincenzo',
	'De Crescenzo',
	'12DCRVNC'
);

insert into Poliziotto (codice_tesserino, nome_poliziotto, cognome_poliziotto, CF_poliziotto)
values(
    'FDRSPS2020',
	'Federico',
	'Esposito',
	'15SPSFDR'
);

insert into Poliziotto (codice_tesserino, nome_poliziotto, cognome_poliziotto, CF_poliziotto)
values(
    'MTTDCR1013',
	'Mattia',
	'De Crescenzo',
	'11DCRMTT'
);

/*Persona*/
insert into Persona(CF,nome,cognome,data_nascita,telefono,id_vittima,id_imputato) 
values(
	'02LCTFRC',
    'Francesca',
    'Licata',
    to_date('11/07/2002', 'dd/mm/yyyy'),
    '33348364740',
    0000000001,
    null  
);

insert into Persona(CF,nome,cognome,data_nascita,telefono,id_vittima,id_imputato) 
values(
	'90GNVNTN',
    'Antonio',
    'Genovese',
    to_date('10/01/1990', 'dd/mm/yyyy'),
    '32348364740',
    0000000002,
    null
);

insert into Persona(CF,nome,cognome,data_nascita,telefono,id_vittima,id_imputato) 
values(
	'01RRCPQL',
    'Pasqualina',
    'Errico',
    to_date('27/04/2001', 'dd/mm/yyyy'),
    '3283364740',
    0000000003,
    null   
);

insert into Persona(CF,nome,cognome,data_nascita,telefono,id_vittima,id_imputato) 
values(
	'81STFMRC',
    'Mariacarla',
    'Staffa',
    to_date('11/02/1981', 'dd/mm/yyyy'),
    '33948364740',
    0000000004,
    null 
);

insert into Persona(CF,nome,cognome,data_nascita,telefono,id_vittima,id_imputato) 
values(
	'03INCNDR',
    'Andrea',
    'Iannaccone',
    to_date('19/11/2003', 'dd/mm/yyyy'),
    '34492364740',
    0000000005,
    null   
);


insert into Persona(CF,nome,cognome,data_nascita,telefono,id_vittima,id_imputato) 
values(
	'88RRCNNA',
    'Anna',
    'Errico',
    to_date('07/10/1988', 'dd/mm/yyyy'),
    '3398364740',
    0000000006,
    null
);

insert into Persona(CF,nome,cognome,data_nascita,telefono,id_vittima,id_imputato) 
values(
	'92RSSGNN',
    'Giovanni',
    'Rossi',
    to_date('23/09/1992', 'dd/mm/yyyy'),
    '3888364740',
    0000000007,
	0000000001   
);

insert into Persona(CF,nome,cognome,data_nascita,telefono,id_vittima,id_imputato) 
values(
	'00BNCLSS',
    'Alessandro',
    'Bianchi',
    to_date('09/07/2000', 'dd/mm/yyyy'),
    '32288364740',
    null,
    null
);

insert into Persona(CF,nome,cognome,data_nascita,telefono,id_vittima,id_imputato) 
values(
	'78CMSFRN',
    'Francesco',
    'Camastra',
    to_date('11/05/1978', 'dd/mm/yyyy'),
    '3448364740',
    null,
    0000000002
);

insert into Persona(CF,nome,cognome,data_nascita,telefono,id_vittima,id_imputato) 
values(
	'91MRTNTN',
    'Antonio',
    'Maratea',
    to_date('25/06/1991', 'dd/mm/yyyy'),
    '34248364740',
    null,
    000000003  
);

insert into Persona(CF,nome,cognome,data_nascita,telefono,id_vittima,id_imputato) 
values(
	'99INNCRM',
    'Carmela',
    'Iannone',
    to_date('22/11/1999', 'dd/mm/yyyy'),
    '3278364740',
    null,
    000000004
);

insert into Persona(CF,nome,cognome,data_nascita,telefono,id_vittima,id_imputato) 
values(
	'66BRTPQL',
    'Pasquale',
    'Bortone',
    to_date('30/11/1966', 'dd/mm/yyyy'),
    '3374606740',
    null,
    000000005
);

insert into Persona(CF,nome,cognome,data_nascita,telefono,id_vittima,id_imputato) 
values(
	'67BLNCTR',
    'Caterina',
    'Bianchetti',
    to_date('11/10/1967', 'dd/mm/yyyy'),
    '33348364741',
    null,
    000000006  
);

insert into Persona(CF,nome,cognome,data_nascita,telefono,id_vittima,id_imputato) 
values(
	'78LSSBNT',
    'Benito',
    'Alessandrini',
    to_date('11/01/1978', 'dd/mm/yyyy'),
    '339127392083',
    null,
    0000000007
);

insert into Persona(CF,nome,cognome,data_nascita,telefono,id_vittima,id_imputato)
values(
	'95LRAFCC',
    'Ilaria',
    'Ficocelli',
    to_date('10/10/1994', 'dd/mm/yy'),
    '3339174990',
    null,
    0000000008
);

insert into Persona(CF,nome,cognome,data_nascita,telefono,id_vittima,id_imputato)
values(
	'98DBLSVT',
    'Salvatore',
	'Di Bello',
	to_date('21/11/1998', 'dd/mm/yyyy'),
    '3661087080',
    0000000008,
    null
);

insert into Persona(CF,nome,cognome,data_nascita,telefono,id_vittima,id_imputato)
values(
	'80NREGNN',
	'Giovanna',
	'Neri',
	to_date('20/10/1980', 'dd/mm/yyyy'),
	'3492389264',
	null,
	null
);

insert into Persona(CF,nome,cognome,data_nascita,telefono,id_vittima,id_imputato)
values(
	'70SPSFBA',
	'Fabio',
	'Esposito',
	to_date('11/10/1970', 'dd/mm/yyyy'),
	'3485063264',
	null,
	null
);

insert into Persona(CF,nome,cognome,data_nascita,telefono,id_vittima,id_imputato)
values(
	'99RCCLNE',
	'Elena',
	'Ricci',
	to_date('17/03/1999', 'dd/mm/yyyy'),
	'3392379264',
	null,
	null
);

insert into Persona(CF,nome,cognome,data_nascita,telefono,id_vittima,id_imputato)
values(
	'34FNTGNN',
	'Giovanni',
	'Fontana',
	to_date('31/01/1934', 'dd/mm/yyyy'),
	'3492389964',
	null,
	null
);

insert into Persona(CF,nome,cognome,data_nascita,telefono,id_vittima,id_imputato)
values(
	'59GLLFRC',
	'Francesca',
	'Gallo',
	to_date('22/04/1959', 'dd/mm/yyyy'),
	'3492300064',
	null,
	null
);

/*Ente*/
insert into Ente(codice_ente, tipo_ente, via_ente, cap_ente, citta)
values(
    '0000120', 
	'Comune',
	'Via San Felici',
	'80131',
	'Milano'
);

insert into Ente(codice_ente, tipo_ente, via_ente, cap_ente, citta)
values(
    '0000121',
	'Comune',
	'Piazza Spartani',
	'82130',
	'Firenze'
);

insert into Ente(codice_ente, tipo_ente, via_ente, cap_ente, citta)
values(
    '0010010',
	'Questura',
	'Vicolo Sant Egidio',
	'80133',
	'Milano'
);

insert into Ente(codice_ente, tipo_ente, via_ente, cap_ente, citta)
values(
    '0023004',
	'Questura',
	'Viale Marconi',
	'80110',
	'Napoli'
);

insert into Ente(codice_ente, tipo_ente, via_ente, cap_ente, citta)
values(
    '0060500',
	'Motorizzazione',
	'Piazza Martini',
	'80150',
	'Bari'
);

insert into Ente(codice_ente, tipo_ente, via_ente, cap_ente, citta)
values(
    '0030291',
	'Questura',
	'Via Del Commercio',
	'80123',
	'Cagliari'
);

insert into Ente(codice_ente, tipo_ente, via_ente, cap_ente, citta)
values(
    '0001231',
	'Motorizzazione',
	'Vicolo Corto',
	'80139',
	'Torino'
);

insert into Ente(codice_ente, tipo_ente, via_ente, cap_ente, citta)
values(
    '0002148',
	'Motorizzazione',
	'Piazza Trieste',
	'80191',
	'Palermo'
);

insert into Ente(codice_ente, tipo_ente, via_ente, cap_ente, citta)
values(
    '0100112',
	'Comune',
	'Piazza Campidoglio',
	'80111',
	'Potenza'
);

insert into Ente(codice_ente, tipo_ente, via_ente, cap_ente, citta)
values(
    '0002111',
	'Comune',
	'Vicolo Stretto',
	'81120',
	'Trieste'
);

insert into Ente(codice_ente, tipo_ente, via_ente, cap_ente, citta)
values(
    '0003221',
	'Questura',
	'Piazza Dante',
	'81121',
	'Marcianise'
);

insert into Ente(codice_ente, tipo_ente, via_ente, cap_ente, citta)
values(
    '0002234',
	'Questura',
	'Viale Dei Giardini',
	'81220',
	'Castellammare Di Stabia'
);

insert into Ente(codice_ente, tipo_ente, via_ente, cap_ente, citta)
values(
    '0010002',
	'Motorizzazione',
	'Via Roma',
	'81130',
	'Casoria'
);

insert into Ente(codice_ente, tipo_ente, via_ente, cap_ente, citta)
values(
    '0001220',
	'Motorizzazione',
	'Piazza Giulio Cesare',
	'81138',
	'Milano'
);

insert into Ente(codice_ente, tipo_ente, via_ente, cap_ente, citta)
values(
    '0002341',
	'Comune',
	'Via Marco Polo',
	'80100',
	'Caserta'
);

/*Veicolo Esaminato*/
insert into VeicoloEsaminato(targa, modello_veicolo, tipo_di_alimentazione, codice_telaio, CF_intestatario)
values(
    'AP200PO',
	'Hyundai',
	'GPL',
	'0040392012',
	'03INCNDR'   
);

insert into VeicoloEsaminato(targa, modello_veicolo, tipo_di_alimentazione, codice_telaio, CF_intestatario)
values(
    'DL200LO',
	'Peugeout',
	'Benzina',
	'0042232012',
	'00BNCLSS'   
);

insert into VeicoloEsaminato(targa, modello_veicolo, tipo_di_alimentazione, codice_telaio, CF_intestatario)
values(
    'EF300PL',
	'Mazda',
	'Diesel',
	'0040201049',
	'03INCNDR'   
);

insert into VeicoloEsaminato(targa, modello_veicolo, tipo_di_alimentazione, codice_telaio, CF_intestatario)
values(
    'GH100OP',
	'Suzuki',
	'Benzina',
	'1002085493',
	'00BNCLSS'   
);

insert into VeicoloEsaminato(targa, modello_veicolo, tipo_di_alimentazione, codice_telaio, CF_intestatario)
values(
    'AZ200PA',
	'Ford',
	'Benzina',
	'0241392022',
	'91MRTNTN'   
);

insert into VeicoloEsaminato(targa, modello_veicolo, tipo_di_alimentazione, codice_telaio, CF_intestatario)
values(
    'CV033FF',
	'Ford',
	'GPL',
	'0030495032',
	'99INNCRM'   
);

insert into VeicoloEsaminato(targa, modello_veicolo, tipo_di_alimentazione, codice_telaio, CF_intestatario)
values(
    'CF102TL',
	'Mercedes',
	'Diesel',
	'0020332076',
	'66BRTPQL'   
);

insert into VeicoloEsaminato(targa, modello_veicolo, tipo_di_alimentazione, codice_telaio, CF_intestatario)
values(
    'BF200FL',
	'Audi',
	'Diesel',
	'0110392112',
	'67BLNCTR'   
);

insert into VeicoloEsaminato(targa, modello_veicolo, tipo_di_alimentazione, codice_telaio, CF_intestatario)
values(
    'GA211LO',
	'Fiat',
	'Elettrico',
	'2090344012',
	'78LSSBNT'   
);

insert into VeicoloEsaminato(targa, modello_veicolo, tipo_di_alimentazione, codice_telaio, CF_intestatario)
values(
    'BM450LO',
	'Volkswagen',
	'Metano',
	'0050692444',
	'95LRAFCC'   
);

insert into VeicoloEsaminato(targa, modello_veicolo, tipo_di_alimentazione, codice_telaio, CF_intestatario)
values(
    'FA100PL',
	'Opel',
	'GPL',
	'0029485021',
	'98DBLSVT'   
);

insert into VeicoloEsaminato(targa, modello_veicolo, tipo_di_alimentazione, codice_telaio, CF_intestatario)
values(
    'FI100RL',
	'Vauxhall',
	'Benzina',
	'0200391102',
	'80NREGNN'   
);

insert into VeicoloEsaminato(targa, modello_veicolo, tipo_di_alimentazione, codice_telaio, CF_intestatario)
values(
    'FF121MN',
	'Ferrari',
	'Benzina',
	'0022399952',
	'70SPSFBA'   
);

insert into VeicoloEsaminato(targa, modello_veicolo, tipo_di_alimentazione, codice_telaio, CF_intestatario)
values(
    'DE200PO',
	'Porsche',
	'Benzina',
	'5120392234',
	'99RCCLNE'   
);

insert into VeicoloEsaminato(targa, modello_veicolo, tipo_di_alimentazione, codice_telaio, CF_intestatario)
values(
    'DF140LP',
	'Tesla',
	'Ibrido',
	'0392899557',
	'99RCCLNE'   
);

/*Multa*/
insert into Multa(numero_verbale_multa, data_emissione_multa, costo, codice_tesserino_multante, targa_multata)
values(
    '00001',
	to_date('05/09/2022', 'dd/mm/yyyy'),
	125.00,
	'LCUDDT0100',
	'FF121MN'
);

insert into Multa(numero_verbale_multa, data_emissione_multa, costo, codice_tesserino_multante, targa_multata)
values(
    '00002',
	to_date('05/09/2022', 'dd/mm/yyyy'),
	75.00,
	'LCUDDT0100',
	'GH100OP'
);

insert into Multa(numero_verbale_multa, data_emissione_multa, costo, codice_tesserino_multante, targa_multata)
values(
    '00003',
	to_date('10/10/2022', 'dd/mm/yyyy'),
	500.00,
	'MTTGVN0010',
	'FF121MN'
);

insert into Multa(numero_verbale_multa, data_emissione_multa, costo, codice_tesserino_multante, targa_multata)
values(
    '00004',
	to_date('01/02/2023', 'dd/mm/yyyy'),
	50.00,
	'GBRBCC1002',
	'FA100PL'
);

insert into Multa(numero_verbale_multa, data_emissione_multa, costo, codice_tesserino_multante, targa_multata)
values(
    '00005',
	to_date('02/01/2023', 'dd/mm/yyyy'),
	140.00,
	'LSESPS1211',
	'FA100PL'
);

insert into Multa(numero_verbale_multa, data_emissione_multa, costo, codice_tesserino_multante, targa_multata)
values(
    '00006',
	to_date('05/03/2023', 'dd/mm/yyyy'),
	130.00,
	'LSESPS1211',
	'BM450LO'
);

insert into Multa(numero_verbale_multa, data_emissione_multa, costo, codice_tesserino_multante, targa_multata)
values(
    '00007',
	to_date('06/04/2023', 'dd/mm/yyyy'),
	55.00,
	'GNNSPS0021',
	'AZ200PA'
);

insert into Multa(numero_verbale_multa, data_emissione_multa, costo, codice_tesserino_multante, targa_multata)
values(
    '00008',
	to_date('10/04/2023', 'dd/mm/yyyy'),
	500.00,
	'GRGMLT0091',
	'CV033FF'
);

insert into Multa(numero_verbale_multa, data_emissione_multa, costo, codice_tesserino_multante, targa_multata)
values(
    '00009',
	to_date('20/10/2023', 'dd/mm/yyyy'),
	500.00,
	'GNNSPS0021',
	'GA211LO'
);

insert into Multa(numero_verbale_multa, data_emissione_multa, costo, codice_tesserino_multante, targa_multata)
values(
    '00010',
	to_date('21/11/2023', 'dd/mm/yyyy'),
	500.00,
	'GRGMLT0091',
	'AZ200PA'
);

insert into Multa(numero_verbale_multa, data_emissione_multa, costo, codice_tesserino_multante, targa_multata)
values(
    '00011',
	to_date('23/12/2023', 'dd/mm/yyyy'),
	500.00,
	'GVNLCR0809',
	'FF121MN'
);

insert into Multa(numero_verbale_multa, data_emissione_multa, costo, codice_tesserino_multante, targa_multata)
values(
    '00012',
	to_date('23/12/2023', 'dd/mm/yyyy'),
	500.00,
	'GVNLCR0809',
	'FI100RL'
);

insert into Multa(numero_verbale_multa, data_emissione_multa, costo, codice_tesserino_multante, targa_multata)
values(
    '00013',
	to_date('12/01/2024', 'dd/mm/yyyy'),
	500.00,
	'VLNBTT0024',
	'CV033FF'
);

insert into Multa(numero_verbale_multa, data_emissione_multa, costo, codice_tesserino_multante, targa_multata)
values(
    '00014',
	to_date('13/01/2024', 'dd/mm/yyyy'),
	500.00,
	'PLATSS0909',
	'DF140LP'
);

insert into Multa(numero_verbale_multa, data_emissione_multa, costo, codice_tesserino_multante, targa_multata)
values(
    '00015',
	to_date('12/02/2024', 'dd/mm/yyyy'),
	500.00,
	'VNCDCR1013',
	'FI100RL'
);

/*Arma*/
insert into Arma(codice_arma, tipo, modello, codice_tesserino_arma)
values(
    '04039485PI',
	'Pistola',
	'Glock 17',
	'GNLMNN0304'
);

insert into Arma(codice_arma, tipo, modello, codice_tesserino_arma)
values(
    '04030385FA',
	'Fucile automatico',
	'AK-47',
	'FRCTFN0090'
);

insert into Arma(codice_arma, tipo, modello, codice_tesserino_arma)
values(
    '04209485MG',
	'Mitraglietta',
	'PKM',
	'GPGMSC0900'
);

insert into Arma(codice_arma, tipo, modello, codice_tesserino_arma)
values(
    '04039411TS',
	'Taser',
	'X2',
	'FDRPRM1110'
);

insert into Arma(codice_arma, tipo, modello, codice_tesserino_arma)
values(
    '04039423PI',
	'Pistola',
	'Beretta 92FS',
	'GNLMNN0304'
);
insert into Arma(codice_arma, tipo, modello, codice_tesserino_arma)
values(
    '04011485FA',
	'Fucile Automatico',
	'M16',
	'FRCTFN0090'
);

insert into Arma(codice_arma, tipo, modello, codice_tesserino_arma)
values(
    '00039485TS',
	'Taser',
	'Pulse',
	'FDRPRM1110'
);

insert into Arma(codice_arma, tipo, modello, codice_tesserino_arma)
values(
    '00000485FS',
	'Fucile S_Automatico',
	'AR-15',
	'FRCTFN0090'
);

insert into Arma(codice_arma, tipo, modello, codice_tesserino_arma)
values(
    '04039325MG',
	'Mitraglietta',
	'MG3',
	'GPGMSC0900'
);

insert into Arma(codice_arma, tipo, modello, codice_tesserino_arma)
values(
    '04039445MG',
	'Mitraglietta',
	'M240',
	'GPGMSC0900'
);
insert into Arma(codice_arma, tipo, modello, codice_tesserino_arma)
values(
    '00019485FA',
	'Fucile Automatico',
	'FN SCAR',
	'FRCTFN0090'
);

insert into Arma(codice_arma, tipo, modello, codice_tesserino_arma)
values(
    '04039026TS',
	'Taser',
	'Bolt',
	'FDRPRM1110'
);

insert into Arma(codice_arma, tipo, modello, codice_tesserino_arma)
values(
    '04039665FA',
	'Fucile Automatico',
	'G36',
	'FRCTFN0090'
);

insert into Arma(codice_arma, tipo, modello, codice_tesserino_arma)
values(
    '04030928PI',
	'Pistola',
	'Colt M1911',
	'GNLMNN0304'
);

insert into Arma(codice_arma, tipo, modello, codice_tesserino_arma)
values(
    '04039005MG',
	'Mitraglietta',
	'M249 SAW',
	'GPGMSC0900'
);

/*Turno*/
insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'LCUDDT0100',
    to_date('05/09/2022', 'DD/MM/YYYY'),
    17,
    6,
    'AREA1'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'LCUDDT0100',
    to_date('12/09/2022', 'DD/MM/YYYY'),
    14,
    6,
    'AREA2'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'FDRPRM1110',
    to_date('20/01/2023', 'DD/MM/YYYY'),
    15,
    6,
    'AREA2'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'FDRPRM1110',
    to_date('23/02/2023', 'DD/MM/YYYY'),
    7,
    6,
    'AREA3'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'GNNSPS0021',
    to_date('06/04/2023', 'DD/MM/YYYY'),
    17,
    6,
    'AREA3'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'GNNSPS0021',
    to_date('20/10/2023', 'DD/MM/YYYY'),
    17,
    6,
    'AREA3'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'GPGMSC0900',
    to_date('11/05/2023', 'DD/MM/YYYY'),
    6,
    6,
    'AREA4'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'GPGMSC0900',
    to_date('01/06/2023', 'DD/MM/YYYY'),
    10,
    6,
    'AREA5'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'FRCTFN0090',
    to_date('02/06/2023', 'DD/MM/YYYY'),
    1,
    6,
    'AREA5'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'FRCTFN0090',
    to_date('02/06/2023', 'DD/MM/YYYY'),
    12,
    6,
    'AREA5'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'FRCTFN0090',
    to_date('10/06/2023', 'DD/MM/YYYY'),
    17,
    4,
    'AREA6'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'FDRPRM1110',
    to_date('20/07/2023', 'DD/MM/YYYY'),
    13,
    6,
    'AREA6'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'FDRPRM1110',
    to_date('23/08/2023', 'DD/MM/YYYY'),
    9,
    6,
    'AREA7'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'GNLMNN0304',
    to_date('30/10/2023', 'DD/MM/YYYY'),
    15,
    6,
    'AREA7'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
	'GNLMNN0304',
    to_date('13/12/2023', 'DD/MM/YYYY'),
    15,
    6,
    'AREA8'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'GNLMNN0304',
    to_date('05/01/2024', 'DD/MM/YYYY'),
    10,
    6,
    'AREA8'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'LSESPS1211',
    to_date('02/01/2023', 'DD/MM/YYYY'),
    14,
    6,
    'AREA8'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'LSESPS1211',
    to_date('05/03/2023', 'DD/MM/YYYY'),
    10,
    6,
    'AREA5'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'MTTGVN0010',
    to_date('10/10/2022', 'DD/MM/YYYY'),
    7,
    6,
    'AREA3'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'GBRBCC1002',
    to_date('01/02/2023', 'DD/MM/YYYY'),
    10,
    6,
    'AREA3'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'VTTPLL1012',
    to_date('05/02/2023', 'DD/MM/YYYY'),
    10,
    6,
    'AREA3'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'GRGMLT0091',
    to_date('10/04/2023', 'DD/MM/YYYY'),
    9,
    6,
    'AREA2'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'GRGMLT0091',
    to_date('21/11/2023', 'DD/MM/YYYY'),
    7,
    6,
    'AREA6'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'VLNBTT0024',
    to_date('12/01/2024', 'DD/MM/YYYY'),
    8,
    6,
    'AREA6'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'VLNBTT0024',
    to_date('15/05/2024', 'DD/MM/YYYY'),
    8,
    6,
    'AREA6'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'PLATSS0909',
    to_date('13/01/2024', 'DD/MM/YYYY'),
    8,
    6,
    'AREA10'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'GVNLCR0809',
    to_date('23/12/2023', 'DD/MM/YYYY'),
    8,
    6,
    'AREA9'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'GVNLCR0809',
    to_date('23/12/2023', 'DD/MM/YYYY'),
    18,
    3,
    'AREA9'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'VNCDCR1013',
    to_date('12/02/2024', 'DD/MM/YYYY'),
    15,
    6,
    'AREA4'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'FDRSPS2020',
    to_date('10/05/2024', 'DD/MM/YYYY'),
    8,
    6,
    'AREA3'
);

insert into Turno(codice_tesserino_turnante, data_turno, ora_inizio, ore, sede)
values(
    'MTTDCR1013',
    TO_DATE('13/04/2024', 'DD/MM/YYYY'),
    8,
    6,
    'AREA8'
);


/*Attrezzatura*/
insert into Attrezzatura(codice_seriale, tipo_attrezzatura)
values(
    '00000001KB',
	'Kit base'
);

insert into Attrezzatura(codice_seriale, tipo_attrezzatura)
values(
    '00000002KB',
	'Kit base'
);

insert into Attrezzatura(codice_seriale, tipo_attrezzatura)
values(
    '00000003KB',
	'Kit base'
);

insert into Attrezzatura(codice_seriale, tipo_attrezzatura)
values(
    '00000004KB',
	'Kit base'
);

insert into Attrezzatura(codice_seriale, tipo_attrezzatura)
values(
    '00000005KB',
	'Kit base'
);

insert into Attrezzatura(codice_seriale, tipo_attrezzatura)
values(
    '10000001KM',
	'Kit medio'
);

insert into Attrezzatura(codice_seriale, tipo_attrezzatura)
values(
    '10000002KM',
	'Kit medio'
);

insert into Attrezzatura(codice_seriale, tipo_attrezzatura)
values(
    '10000003KM',
	'Kit medio'
);

insert into Attrezzatura(codice_seriale, tipo_attrezzatura)
values(
    '10000004KM',
	'Kit medio'
);

insert into Attrezzatura(codice_seriale, tipo_attrezzatura)
values(
    '10000005KM',
	'Kit medio'
);

insert into Attrezzatura(codice_seriale, tipo_attrezzatura)
values(
    '20000001KS',
	'Kit operazioni speciali'
);

insert into Attrezzatura(codice_seriale, tipo_attrezzatura)
values(
    '20000002KS',
	'Kit operazioni speciali'
);

insert into Attrezzatura(codice_seriale, tipo_attrezzatura)
values(
    '20000003KS',
	'Kit operazioni speciali'
);

insert into Attrezzatura(codice_seriale, tipo_attrezzatura)
values(
    '20000004KS',
	'Kit operazioni speciali'
);

insert into Attrezzatura(codice_seriale, tipo_attrezzatura)
values(
    '20000005KS',
	'Kit operazioni speciali'
);

/*Documento*/
insert into Documento(numero_documento,tipo_documento,scadenza,data_di_rilascio,codice_ente_rilasciatario,CF_possessore)
values(
	'CA94673GG',
	'Carta identita',
	to_date('11/07/2032', 'dd/mm/yyyy'),
	to_date('22/05/2021', 'dd/mm/yyyy'),
	'0000120',
	'02LCTFRC'
	);

insert into Documento(numero_documento,tipo_documento,scadenza,data_di_rilascio,codice_ente_rilasciatario,CF_possessore)
values(
	'CE94933NN',
	'Carta identita',
	to_date('10/01/2033', 'dd/mm/yyyy'),
	to_date('22/08/2022', 'dd/mm/yyyy'),
	'0000120',
	'90GNVNTN'
	);

insert into Documento(numero_documento,tipo_documento,scadenza,data_di_rilascio,codice_ente_rilasciatario,CF_possessore)
values(
	'CA940727GM',
	'Carta identita',
	to_date('27/04/2034', 'dd/mm/yyyy'),
	to_date('22/11/2023', 'dd/mm/yyyy'),
	'0100112',
	'01RRCPQL'
	);
insert into Documento(numero_documento,tipo_documento,scadenza,data_di_rilascio,codice_ente_rilasciatario,CF_possessore)
values(
	'CA00384TT',
	'Carta identita',
	to_date('11/02/2028', 'dd/mm/yyyy'),
	to_date('17/10/2017', 'dd/mm/yyyy'),
	'0100112',
	'81STFMRC'
	);

insert into Documento(numero_documento,tipo_documento,scadenza,data_di_rilascio,codice_ente_rilasciatario,CF_possessore)
values(
	'CA85434VG',
	'Carta identita',
	to_date('19/11/2027', 'dd/mm/yyyy'),
	to_date('22/05/2016', 'dd/mm/yyyy'),
	'0002111',
	'03INCNDR'
	);

insert into Documento(numero_documento,tipo_documento,scadenza,data_di_rilascio,codice_ente_rilasciatario,CF_possessore)
values(
	'CA017593HA',
	'Carta identita',
	to_date('07/10/2032', 'dd/mm/yyyy'),
	to_date('29/05/2021', 'dd/mm/yyyy'),
	'0002111',
	'88RRCNNA'
	);

insert into Documento(numero_documento,tipo_documento,scadenza,data_di_rilascio,codice_ente_rilasciatario,CF_possessore)
values(
	'CQ92843PO',
	'Carta identita',
	to_date('23/09/2025', 'dd/mm/yyyy'),
	to_date('30/12/2014', 'dd/mm/yyyy'),
	'0002341',
	'92RSSGNN'
	);

insert into Documento(numero_documento,tipo_documento,scadenza,data_di_rilascio,codice_ente_rilasciatario,CF_possessore)
values(
	'CV92843RR',
	'Carta identita',
	to_date('09/07/2027', 'dd/mm/yyyy'),
	to_date('14/06/2016', 'dd/mm/yyyy'),
	'0002341',
	'00BNCLSS'
	);

insert into Documento(numero_documento,tipo_documento,scadenza,data_di_rilascio,codice_ente_rilasciatario,CF_possessore)
values(
	'CA43759PZ',
	'Carta identita',
	to_date('11/05/2035', 'dd/mm/yyyy'),
	to_date('02/03/2024', 'dd/mm/yyyy'),
	'0002341',
	'78CMSFRN'
	);

insert into Documento(numero_documento,tipo_documento,scadenza,data_di_rilascio,codice_ente_rilasciatario,CF_possessore)
values(
	'YB8465438',
	'Passaporto',
	to_date('25/06/2032', 'dd/mm/yyyy'),
	to_date('04/09/2022', 'dd/mm/yyyy'),
	'0010010',
	'91MRTNTN'
	);

insert into Documento(numero_documento,tipo_documento,scadenza,data_di_rilascio,codice_ente_rilasciatario,CF_possessore)
values(
	'CP94792VV',
	'Carta identita',
	to_date('22/11/2028', 'dd/mm/yyyy'),
	to_date('22/05/2017', 'dd/mm/yyyy'),
	'0002111',
	'99INNCRM'
	);

insert into Documento(numero_documento,tipo_documento,scadenza,data_di_rilascio,codice_ente_rilasciatario,CF_possessore)
values(
	'CQ87654GS',
	'Carta identita',
	to_date('30/11/2030', 'dd/mm/yyyy'),
	to_date('11/12/2019', 'dd/mm/yyyy'),
	'0002111',
	'66BRTPQL'
	);

insert into Documento(numero_documento,tipo_documento,scadenza,data_di_rilascio,codice_ente_rilasciatario,CF_possessore)
values(
	'CA94673GU',
	'Carta identita',
	to_date('11/10/2022', 'dd/mm/yyyy'),
	to_date('14/08/2011', 'dd/mm/yyyy'),
	'0100112',
	'67BLNCTR'
	);

insert into Documento(numero_documento,tipo_documento,scadenza,data_di_rilascio,codice_ente_rilasciatario,CF_possessore)
values(
	'YA8543718',
	'Passaporto',
	to_date('11/01/2025', 'dd/mm/yyyy'),
	to_date('28/02/2015', 'dd/mm/yyyy'),
	'0003221',
	'78LSSBNT'
	);

insert into Documento(numero_documento,tipo_documento,scadenza,data_di_rilascio,codice_ente_rilasciatario,CF_possessore)
values(
	'CZ85400ED',
	'Carta identita',
	to_date('10/10/2033', 'dd/mm/yyyy'),
	to_date('27/04/2022', 'dd/mm/yyyy'),
	'0100112',
	'95LRAFCC'
	);

insert into Documento(numero_documento,tipo_documento,scadenza,data_di_rilascio,codice_ente_rilasciatario,CF_possessore)
values(
	'CU84933FR',
	'Carta identita',
	to_date('21/11/2035', 'dd/mm/yyyy'),
	to_date('07/01/2024', 'dd/mm/yyyy'),
	'0100112',
	'98DBLSVT'
	);

insert into Documento(numero_documento,tipo_documento,scadenza,data_di_rilascio,codice_ente_rilasciatario,CF_possessore)
values(
	'YA8493569',
	'Passaporto',
	to_date('20/10/2029', 'dd/mm/yyyy'),
	to_date('11/05/2019', 'dd/mm/yyyy'),
	'0002234',
	'80NREGNN'
	);

insert into Documento(numero_documento,tipo_documento,scadenza,data_di_rilascio,codice_ente_rilasciatario,CF_possessore)
values(
	'CA94673GF',
	'Carta identita',
	to_date('11/10/2024', 'dd/mm/yyyy'),
	to_date('10/07/2013', 'dd/mm/yyyy'),
	'0002341',
	'70SPSFBA'
	);

insert into Documento(numero_documento,tipo_documento,scadenza,data_di_rilascio,codice_ente_rilasciatario,CF_possessore)
values(
	'CK84933PP',
	'Carta identita',
	to_date('17/03/2026', 'dd/mm/yyyy'),
	to_date('23/07/2015', 'dd/mm/yyyy'),
	'0002341',
	'99RCCLNE'
	);

insert into Documento(numero_documento,tipo_documento,scadenza,data_di_rilascio,codice_ente_rilasciatario,CF_possessore)
values(
	'MI96054839',
	'Patente',
	to_date('31/01/2032', 'dd/mm/yyyy'),
	to_date('21/06/2022', 'dd/mm/yyyy'),
	'0001220',
	'34FNTGNN'
	);
	
insert into Documento(numero_documento,tipo_documento,scadenza,data_di_rilascio,codice_ente_rilasciatario,CF_possessore)
values(
	'MI93040607',
	'Patente',
	to_date('22/04/2033','dd,mm,yyyy'),
	to_date('18/05/2023','dd,mm,yyyy'),
	'0010002',
	'59GLLFRC'
	);

/*Ufficio Denunce*/
insert into UfficioDenunce(numero, codice_tesserino_ctrl, nome_dipendente_assegnato)
values(
	'001',
	'VTTPLL1012',
	'Filippo'
);

insert into UfficioDenunce(numero, codice_tesserino_ctrl, nome_dipendente_assegnato)
values(
	'002',
	'VTTPLL1012',
	'Giovanni'
);

insert into UfficioDenunce(numero, codice_tesserino_ctrl, nome_dipendente_assegnato)
values(
	'020',
	'VTTPLL1012',
	'Giuseppe'
);

insert into UfficioDenunce(numero, codice_tesserino_ctrl, nome_dipendente_assegnato)
values(
	'005',
	'VTTPLL1012',
	'Lorenzo'
);

insert into UfficioDenunce(numero, codice_tesserino_ctrl, nome_dipendente_assegnato)
values(
	'007',
	'VTTPLL1012',
	'Luca'
);

insert into UfficioDenunce(numero, codice_tesserino_ctrl, nome_dipendente_assegnato)
values(
	'006',
	'FDRSPS2020',
	'Martina' 
);

insert into UfficioDenunce(numero, codice_tesserino_ctrl, nome_dipendente_assegnato)
values(
	'010',
	'FDRSPS2020',
	'Maria' 
);

insert into UfficioDenunce(numero, codice_tesserino_ctrl, nome_dipendente_assegnato)
values(
	'009',
	'FDRSPS2020',
	'Lisa' 
);

insert into UfficioDenunce(numero, codice_tesserino_ctrl, nome_dipendente_assegnato)
values(
	'012',
	'FDRSPS2020',
	'Paolo' 
);

insert into UfficioDenunce(numero, codice_tesserino_ctrl, nome_dipendente_assegnato)
values(
	'014',
	'FDRSPS2020',
	'Giovanni' 
);

insert into UfficioDenunce(numero, codice_tesserino_ctrl, nome_dipendente_assegnato)
values(
	'003',
	'MTTDCR1013',
	'Andrea' 
);

insert into UfficioDenunce(numero, codice_tesserino_ctrl, nome_dipendente_assegnato)
values(
	'004',
	'MTTDCR1013',
	'Arianna' 
);

insert into UfficioDenunce(numero, codice_tesserino_ctrl, nome_dipendente_assegnato)
values(
	'015',
	'MTTDCR1013',
	'Adriana' 
);

insert into UfficioDenunce(numero, codice_tesserino_ctrl, nome_dipendente_assegnato)
values(
	'031',
	'MTTDCR1013',
	'Francesco' 
);

insert into UfficioDenunce(numero, codice_tesserino_ctrl, nome_dipendente_assegnato)
values(
	'033',
	'MTTDCR1013',
	'Francesca' 
);

/*Denuncia*/
insert into Denuncia(numero_verbale_denuncia,numero_ufficio,data_emissione)
values(
	00001,
	'001',
	to_date('13/01/2023', 'dd,mm,yyyy') 
	);

insert into Denuncia(numero_verbale_denuncia,numero_ufficio,data_emissione)
values(
	00002,
	'020',
	to_date('16/01/2023', 'dd,mm,yyyy') 
	);

insert into Denuncia(numero_verbale_denuncia,numero_ufficio,data_emissione)
values(
	00003,
	'001',
	to_date('19/01/2023', 'dd,mm,yyyy') 
	);

insert into Denuncia(numero_verbale_denuncia,numero_ufficio,data_emissione)
values(
	00004,
	'007',
	to_date('04/03/2023', 'dd,mm,yyyy') 
	);

insert into Denuncia(numero_verbale_denuncia,numero_ufficio,data_emissione)
values(
	00005,
	'002',
	to_date('20/05/2023', 'dd,mm,yyyy') 
	);

insert into Denuncia(numero_verbale_denuncia,numero_ufficio,data_emissione)
values(
	00006,
	'002',
	to_date('22/08/2023', 'dd,mm,yyyy') 
	);

insert into Denuncia(numero_verbale_denuncia,numero_ufficio,data_emissione)
values(
	00007,
	'005',
	to_date('10/10/2023', 'dd,mm,yyyy') 
	);

insert into Denuncia(numero_verbale_denuncia,numero_ufficio,data_emissione)
values(
	00008,
	'020',
	to_date('15/12/2023', 'dd,mm,yyyy') 
	);

insert into Denuncia(numero_verbale_denuncia,numero_ufficio,data_emissione)
values(
	00009,
	'006',
	to_date('01/01/2024', 'dd,mm,yyyy') 
	);

insert into Denuncia(numero_verbale_denuncia,numero_ufficio,data_emissione)
values(
	00010,
	'020',
	to_date('04/02/2024', 'dd,mm,yyyy') 
	);

insert into Denuncia(numero_verbale_denuncia,numero_ufficio,data_emissione)
values(
	00011,
	'010',
	to_date('07/03/2024', 'dd,mm,yyyy') 
	);

insert into Denuncia(numero_verbale_denuncia,numero_ufficio,data_emissione)
values(
	00012,
	'020',
	to_date('10/03/2024', 'dd,mm,yyyy') 
	);

insert into Denuncia(numero_verbale_denuncia,numero_ufficio,data_emissione)
values(
	00013,
	'009',
	to_date('12/04/2024', 'dd,mm,yyyy') 
	);

insert into Denuncia(numero_verbale_denuncia,numero_ufficio,data_emissione)
values(
	00014,
	'012',
	to_date('15/05/2024', 'dd,mm,yyyy') 
	);

insert into Denuncia(numero_verbale_denuncia,numero_ufficio,data_emissione)
values(
	00015,
	'014',
	to_date('18/06/2024', 'dd,mm,yyyy') 
	);

insert into Denuncia(numero_verbale_denuncia,numero_ufficio,data_emissione)
values(
	00016,
	'003',
	to_date('18/06/2024', 'dd,mm,yyyy') 
	);

insert into Denuncia(numero_verbale_denuncia,numero_ufficio,data_emissione)
values(
	00017,
	'004',
	to_date('25/07/2024', 'dd,mm,yyyy') 
	);


insert into Denuncia(numero_verbale_denuncia,numero_ufficio,data_emissione)
values(
	00018,
	'015',
	to_date('28/07/2024', 'dd,mm,yyyy') 
	);

insert into Denuncia(numero_verbale_denuncia,numero_ufficio,data_emissione)
values(
	00019,
	'031',
	to_date('28/07/2024', 'dd,mm,yyyy') 
	);

insert into Denuncia(numero_verbale_denuncia,numero_ufficio,data_emissione)
values(
	00020,
	'033',
	to_date('29/07/2024', 'dd,mm,yyyy') 
	);

/*Depone*/
insert into Depone(CF_vittima, numero_verbale_deposto)
values(
	'02LCTFRC',
	00001
);

insert into Depone(CF_vittima, numero_verbale_deposto)
values(
	'02LCTFRC',
	00002
);

insert into Depone(CF_vittima, numero_verbale_deposto)
values(
	'90GNVNTN',
	00003
);

insert into Depone(CF_vittima, numero_verbale_deposto)
values(
	'01RRCPQL',
	00003
);

insert into Depone(CF_vittima, numero_verbale_deposto)
values(
	'81STFMRC',
	00004
);

insert into Depone(CF_vittima, numero_verbale_deposto)
values(
	'81STFMRC',
	00005
);

insert into Depone(CF_vittima, numero_verbale_deposto)
values(
	'03INCNDR',
	00006
);

insert into Depone(CF_vittima, numero_verbale_deposto)
values(
	'88RRCNNA',
	00007
);

insert into Depone(CF_vittima, numero_verbale_deposto)
values(
	'92RSSGNN',
	00008
);

insert into Depone(CF_vittima, numero_verbale_deposto)
values(
	'98DBLSVT',
	00009
);

insert into Depone(CF_vittima, numero_verbale_deposto)
values(
	'88RRCNNA',
	00010
);

insert into Depone(CF_vittima, numero_verbale_deposto)
values(
	'92RSSGNN',
	00011
);

insert into Depone(CF_vittima, numero_verbale_deposto)
values(
	'01RRCPQL',
	00011
);

insert into Depone(CF_vittima, numero_verbale_deposto)
values(
	'03INCNDR',
	00012
);

insert into Depone(CF_vittima, numero_verbale_deposto)
values(
	'03INCNDR',
	00013
);

insert into Depone(CF_vittima, numero_verbale_deposto)
values(
	'92RSSGNN',
	00014
);

insert into Depone(CF_vittima, numero_verbale_deposto)
values(
	'98DBLSVT',
	00015
);

/*Riguarda*/
insert into Riguarda(CF_imputato, numero_verbale_a_carico)
values(
	'92RSSGNN',
	00001
);

insert into Riguarda(CF_imputato, numero_verbale_a_carico)
values(
	'78CMSFRN',
	00002
);

insert into Riguarda(CF_imputato, numero_verbale_a_carico)
values(
	'91MRTNTN',
	00003
);

insert into Riguarda(CF_imputato, numero_verbale_a_carico)
values(
	'99INNCRM',
	00004
);

insert into Riguarda(CF_imputato, numero_verbale_a_carico)
values(
	'66BRTPQL',
	00005
);

insert into Riguarda(CF_imputato, numero_verbale_a_carico)
values(
	'67BLNCTR',
	00006
);

insert into Riguarda(CF_imputato, numero_verbale_a_carico)
values(
	'78LSSBNT',
	00007
);

insert into Riguarda(CF_imputato, numero_verbale_a_carico)
values(
	'95LRAFCC',
	00008
);

insert into Riguarda(CF_imputato, numero_verbale_a_carico)
values(
	'78CMSFRN',
	00009
);

insert into Riguarda(CF_imputato, numero_verbale_a_carico)
values(
	'78LSSBNT',
	00010
);

insert into Riguarda(CF_imputato, numero_verbale_a_carico)
values(
	'99INNCRM',
	00011
);

insert into Riguarda(CF_imputato, numero_verbale_a_carico)
values(
	'95LRAFCC',
	00012
);

insert into Riguarda(CF_imputato, numero_verbale_a_carico)
values(
	'67BLNCTR',
	00013
);

insert into Riguarda(CF_imputato, numero_verbale_a_carico)
values(
	'66BRTPQL',
	00014
);

insert into Riguarda(CF_imputato, numero_verbale_a_carico)
values(
	'91MRTNTN',
	00015
);

/*Controlla*/
insert into Controlla(codice_tesserino_controllore, CF_persona_controllata, data_controllo)
values(
	'MTTGVN0010',
	'70SPSFBA',
	to_date('10/10/2022','dd/mm/yyyy')
);

insert into Controlla(codice_tesserino_controllore, CF_persona_controllata, data_controllo)
values(
	'LCUDDT0100',
	'70SPSFBA',
	to_date('05/09/2022','dd/mm/yyyy')
);

insert into Controlla(codice_tesserino_controllore, CF_persona_controllata, data_controllo)
values(
	'LCUDDT0100',
	'00BNCLSS',
	to_date('05/09/2022','dd/mm/yyyy')
);

insert into Controlla(codice_tesserino_controllore, CF_persona_controllata, data_controllo)
values(
	'LSESPS1211',
	'98DBLSVT',
	to_date('02/01/2023','dd/mm/yyyy')
);

insert into Controlla(codice_tesserino_controllore, CF_persona_controllata, data_controllo)
values(
	'LSESPS1211',
	'95LRAFCC',
	to_date('05/03/2023','dd/mm/yyyy')
);

insert into Controlla(codice_tesserino_controllore, CF_persona_controllata, data_controllo)
values(
	'GBRBCC1002',
	'98DBLSVT',
	to_date('05/10/2023','dd/mm/yyyy')
);

insert into Controlla(codice_tesserino_controllore, CF_persona_controllata, data_controllo)
values(
	'GBRBCC1002',
	'01RRCPQL',
	to_date('01/02/2023' ,'dd/mm/yyyy')
);

insert into Controlla(codice_tesserino_controllore, CF_persona_controllata, data_controllo)
values(
	'GNNSPS0021',
	'91MRTNTN',
	to_date('06/04/2023','dd/mm/yyyy')
);

insert into Controlla(codice_tesserino_controllore, CF_persona_controllata, data_controllo)
values(
	'GNNSPS0021',
	'78LSSBNT',
	to_date('20/10/2023','dd/mm/yyyy')
);

insert into Controlla(codice_tesserino_controllore, CF_persona_controllata, data_controllo)
values(
	'GRGMLT0091',
	'99INNCRM',
	to_date('10/04/2023','dd/mm/yyyy')
);

insert into Controlla(codice_tesserino_controllore, CF_persona_controllata, data_controllo)
values(
	'GRGMLT0091',
	'91MRTNTN',
	to_date('21/11/2023','dd/mm/yyyy')
);

insert into Controlla(codice_tesserino_controllore, CF_persona_controllata, data_controllo)
values(
	'VLNBTT0024',
	'99INNCRM',
	to_date('12/01/2024','dd/mm/yyyy')
);

insert into Controlla(codice_tesserino_controllore, CF_persona_controllata, data_controllo)
values(
	'VLNBTT0024',
	'99INNCRM',
	to_date('15/05/2024','dd/mm/yyyy')
);

insert into Controlla(codice_tesserino_controllore, CF_persona_controllata, data_controllo)
values(
	'PLATSS0909',
	'99RCCLNE',
	to_date('13/01/2024','dd/mm/yyyy')
);

insert into Controlla(codice_tesserino_controllore, CF_persona_controllata, data_controllo)
values(
	'GVNLCR0809',
	'70SPSFBA',
	to_date('23/12/2023','dd/mm/yyyy')
);

insert into Controlla(codice_tesserino_controllore, CF_persona_controllata, data_controllo)
values(
	'GVNLCR0809',
	'80NREGNN',
	to_date('23/12/2023','dd/mm/yyyy')
);

insert into Controlla(codice_tesserino_controllore, CF_persona_controllata, data_controllo)
values(
	'VNCDCR1013',
	'80NREGNN',
	to_date('12/02/2024','dd/mm/yyyy')
);

/*Possiede*/

insert into Possiede(codice_seriale_posseduto, codice_tesserino_possessore, data_utilizzo, orario_inizio, ore_di_acquisizione)
values(
    '00000001KB',
    'LCUDDT0100',
    to_date('05/09/2022','dd/mm/yyyy'),
    18,
    6
);

insert into Possiede(codice_seriale_posseduto, codice_tesserino_possessore, data_utilizzo, orario_inizio, ore_di_acquisizione)
values(
    '00000002KB',
    'LCUDDT0100',
    to_date('12/09/2022','dd/mm/yyyy'),
    14,
    6
);

insert into Possiede(codice_seriale_posseduto, codice_tesserino_possessore, data_utilizzo, orario_inizio, ore_di_acquisizione)
values(
    '00000002KB',
    'MTTGVN0010',
    to_date('10/10/2022','dd/mm/yyyy'),
    7,
    6
);

insert into Possiede(codice_seriale_posseduto, codice_tesserino_possessore, data_utilizzo, orario_inizio, ore_di_acquisizione)
values(
    '00000003KB',
    'GBRBCC1002',
    to_date('01/02/2023','dd/mm/yyyy'),
    10,
    6
);

insert into Possiede(codice_seriale_posseduto, codice_tesserino_possessore, data_utilizzo, orario_inizio, ore_di_acquisizione)
values(
    '10000001KM',
    'LSESPS1211',
    to_date('02/01/2023','dd/mm/yyyy'),
    14,
    6
);

insert into Possiede(codice_seriale_posseduto, codice_tesserino_possessore, data_utilizzo, orario_inizio, ore_di_acquisizione)
values(
    '20000003KS',
    'GBRBCC1002',
    to_date('01/02/2023','dd/mm/yyyy'),
    10,
    6
);

insert into Possiede(codice_seriale_posseduto, codice_tesserino_possessore, data_utilizzo, orario_inizio, ore_di_acquisizione)
values(
    '20000003KS',
    'LSESPS1211',
    to_date('05/03/2023','dd/mm/yyyy'),
    10,
    6
);

insert into Possiede(codice_seriale_posseduto, codice_tesserino_possessore, data_utilizzo, orario_inizio, ore_di_acquisizione)
values(
    '00000003KB',
    'GNNSPS0021',
    to_date('06/04/2023','dd/mm/yyyy'),
    22,
    6
);

insert into Possiede(codice_seriale_posseduto, codice_tesserino_possessore, data_utilizzo, orario_inizio, ore_di_acquisizione)
values(
    '00000003KB',
    'GNNSPS0021',
    to_date('20/10/2023','dd/mm/yyyy'),
    22,
    6
);

insert into Possiede(codice_seriale_posseduto, codice_tesserino_possessore, data_utilizzo, orario_inizio, ore_di_acquisizione)
values(
    '00000003KB',
    'GRGMLT0091',
    to_date('10/04/2023','dd/mm/yyyy'),
    9,
    6
);

insert into Possiede(codice_seriale_posseduto, codice_tesserino_possessore, data_utilizzo, orario_inizio, ore_di_acquisizione)
values(
    '00000004KB',
    'GRGMLT0091',
    to_date('21/11/2023','dd/mm/yyyy'),
    7,
    6
);

insert into Possiede(codice_seriale_posseduto, codice_tesserino_possessore, data_utilizzo, orario_inizio, ore_di_acquisizione)
values(
    '00000003KB',
    'GVNLCR0809',
    to_date('23/12/2023','dd/mm/yyyy'),
    8,
    6
);

insert into Possiede(codice_seriale_posseduto, codice_tesserino_possessore, data_utilizzo, orario_inizio, ore_di_acquisizione)
values(
    '00000005KB',
    'GVNLCR0809',
    to_date('23/12/2023','dd/mm/yyyy'),
    22,
    6
);

insert into Possiede(codice_seriale_posseduto, codice_tesserino_possessore, data_utilizzo, orario_inizio, ore_di_acquisizione)
values(
    '00000002KB',
    'VLNBTT0024',
    to_date('12/01/2024','dd/mm/yyyy'),
    8,
    6
);

insert into Possiede(codice_seriale_posseduto, codice_tesserino_possessore, data_utilizzo, orario_inizio, ore_di_acquisizione)
values(
    '00000002KB',
    'VLNBTT0024',
    to_date('15/05/2024','dd/mm/yyyy'),
    8,
    6
);

insert into Possiede(codice_seriale_posseduto, codice_tesserino_possessore, data_utilizzo, orario_inizio, ore_di_acquisizione)
values(
    '00000004KB',
    'PLATSS0909',
    to_date('13/01/2024','dd/mm/yyyy'),
    8,
    6
);

insert into Possiede(codice_seriale_posseduto, codice_tesserino_possessore, data_utilizzo, orario_inizio, ore_di_acquisizione)
values(
    '00000004KB',
    'VNCDCR1013',
    to_date('12/02/2024','dd/mm/yyyy'),
    22,
    6
);