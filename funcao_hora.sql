delimiter //
create function hora_fim(hora_inicio time,duracao time)
returns time
Begin 
 return addtime(hora_inicio, duracao);
End //
delimiter ;