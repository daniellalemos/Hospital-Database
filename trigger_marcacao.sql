CREATE DEFINER=`root`@`localhost` TRIGGER `marcacao_has_exame_BEFORE_INSERT` BEFORE INSERT ON `marcacao_has_exame` FOR EACH ROW BEGIN
IF ((NEW.sala in (select sala from trabalho.marcacao_has_exame)) )
and (NEW.hora_inicio in (select hora_inicio from trabalho.marcacao_has_exame))
and (NEW.data in (select data from trabalho.marcacao_has_exame))
then signal sqlstate '45000' set message_text = 'Não é possível marcar nestas condições';
END IF;
END