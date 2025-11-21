Create user DB_Comando identified by Comando;
Grant all privileges to DB_Comando;

--Colonnello
Create user Colonnello identified by Colonnello;
Grant connect, create session to Colonnello;
Grant execute on creaTurno to Colonnello;
Grant execute on assumiPoliziotto to Colonnello;
Grant execute on assegnaAttrezzatura to Colonnello;
Grant select on DenunceUltimoMese to Colonnello;
Grant select on VistaImputati to Colonnello;
Grant select on VistaVittime to Colonnello;
Grant select on MulteUltimiTreMesi to Colonnello;
Grant all on Turno to Colonnello;
Grant all on Poliziotto to Colonnello;
Grant all on Attrezzatura to Colonnello;
--Armiere
Create user Armiere identified by Armiere;
Grant connect, create session to Armiere;
Grant execute on rivendicaArma to Armiere;
Grant execute on rivendicaAttrezzatura to Armiere;
Grant select on Attrezzatura to Armiere;
Grant select on Armi to Armiere;

--Dipendente
Create user Dipendente identified by Dipendente;
Grant connect, create session to Dipendente;
Grant execute on prelevaDenuncia to Dipendente;
Grant select on DenunceUltimoMese to Dipendente;
Grant select on VistaImputati to Dipendente;
Grant select on VistaVittime to Dipendente;
Grant select on Denuncia to Dipendente;
Grant select on Depone to Dipendente;
Grant select on Riguarda to Dipendente;

--Poliziotto
Create user Poliziotto identified by Poliziotto;
Grant connect, create session to Poliziotto;
Grant execute on inserisciPersona to Poliziotto;
Grant execute on definisciMulta to Poliziotto;
Grant execute on definisciVeicoloEsaminato to Poliziotto;
Grant execute on registraDocumento to Poliziotto;
Grant select on DenunceUltimoMese to Poliziotto;
Grant select on VistaImputati to Poliziotto;
Grant select on VistaVittime to Poliziotto;
Grant select on MulteUltimiTreMesi to Poliziotto;
Grant all on Persona to Poliziotto;
Grant all on VeicoloEsaminato to Poliziotto;
Grant all on Multa to Poliziotto;
Grant all on Documento to Poliziotto;
