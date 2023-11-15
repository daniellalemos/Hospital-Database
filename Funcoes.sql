SET GLOBAL log_bin_trust_function_creators = 1;

delimiter //
create function idade(date1 date) 
returns int
Begin
 return timestampdiff(year,date1,curDate());
End //
delimiter ;




create view paciente_seguro as (select p.nome,p.data_nascimento,p.s_comparticipacao,p.genero,p.idade from Paciente p);
