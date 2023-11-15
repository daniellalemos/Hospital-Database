DELIMITER //
CREATE PROCEDURE cancelado ( Marcacao int)
begin
    delete from Marcacao where idMarcacao=Marcacao;
    delete from Marcacao_has_exame where Marcacao_idMarcacao=Marcacao;
end //
DELIMITER ;