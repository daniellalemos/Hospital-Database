DELIMITER //
CREATE PROCEDURE falecimento ( utente int)
begin
delete from Marcacao where Paciente_nºutente=utente;
delete from Paciente where nºutente=utente;
delete from Contactos where Paciente_nºutente=utente;
delete from Marcacao_has_exame where Marcacao_Paciente_nºutente=utente;
end //
DELIMITER ;