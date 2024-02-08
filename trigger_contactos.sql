CREATE DEFINER=`root`@`localhost` TRIGGER `contactos_BEFORE_INSERT` BEFORE INSERT ON `contactos` FOR EACH ROW BEGIN
IF (new.email = '' or new.email not like '_%@__%.__%') then
			set new.email = NULL;
	end if;
END