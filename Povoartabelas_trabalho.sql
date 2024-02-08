INSERT INTO trabalho.marcacao_has_exame (hora_fim) SELECT hora_fim(hora_inicio,duracao) FROM marcacao_has_exame;
 
INSERT INTO trabalho.Paciente (idade) SELECT idade(data_nascimento) FROM Paciente;

INSERT INTO trabalho.Medico (anos_servico) SELECT idade(data_inicio_servico) FROM Medico;

INSERT INTO trabalho.Morada (idMorada, codigo_postal, rua, localidade) VALUES (1, "4710-654","Rua das Canas 256", "Braga"), (2,"4714-542","Rua das Maias 12","Braga"), (3,"4710-008","Travessa da Lage Gualtar 05", "Braga"), (4,"4767-501","Avenida Engenheiro Pinheiro Braga Gavião 9020","Vila Nova de Famalicão"), (5, "4804-534", "Largo Cónego José Maria Gomes 08", "Guimarães"), (6,"4723-120","Ferreiros e Gondizalves 456", "Braga"), (7,"4725-102", "Lomar e Arcos 20", "Braga"), (8,"4743-456","Merelim (Sao Pedro) e Frossos 59", "Braga"), (9,"4763-102", "Tadim 01", "Braga"), (10,"4670-580", "Tadim 25", "Braga"), (11, "4700-033","Real, Dume e Semelhe 36", "Braga"), (12, "4702-125","Pedralva 125", "Braga" ), (13,"4789-036","Este (Sao Pedro e Sao Mamede) 23", "Braga"), (14, "4701-145","Crespos e Pousada 258", "Braga"), (15, "4769-003", "Esporoes 458", "Braga"), (16, "4725-009", "Sobreposta 80", "Braga"), (17, "4788-118","Maximinos, Se e Cividade 14", "Braga");

INSERT INTO trabalho.Equipamento (idEquipamento, Nome, Modelo) VALUES (1, "Sonda Linear","DX-523"),(2,"Digital Direto","PerformX Digi AT"),(3,"Convencional","BReeZe – Arcom"),(4,"Endoscópio","AR-240"),(5,"Sonda Ultrassónica","Breil-34D"),(6,"NeuVantage","1.5T – Neusoft"),(7,"NeuVantage","0.35T - Neusoft");

INSERT INTO trabalho.Modalidade (idModalidade, nome) VALUES (1,"Ressonância Magnética"),(2,"Endoscopia"),(3,"Ecocardiograma"),(4,"Ecografia"),(5,"Radiografia");

INSERT INTO trabalho.Especialidade (idEspecialidade, designacao) VALUES (11, "Gastrenterologia"),(13,"Radiologia"),(12, "Cardiologia");

INSERT INTO trabalho.Paciente (nºutente, NIF, nome, data_nascimento, idade, genero, s_comparticipacao, Morada_idMorada) VALUES (460505826,215685778,"Joana Ferreira","1975-12-08",idade(data_nascimento), "F", "SNS", 6),(182552802,002855422,"Ana Luisa Pereira","1953-10-13",idade(Data_Nascimento),"F","AdvanceCare", 8),(134330630,220348416,"José Lopes","1960-08-12",idade(data_nascimento),"M", "null", 15),(218637581,870542216,"Roberto Pereira","2002-10-18",idade(data_nascimento),"M","SNS", 17),(125285547,135615512,"Carla Guimarães","1972-03-03",idade(data_nascimento),"F","Multicare", 7),(271480643,344785105,"Rita Rodrigues","1972-03-03",idade(data_nascimento),"F","SNS",9),(161432848,626725828,"Ana Faria","2003-09-29",idade(data_nascimento),"F","null",12),(176616010,510716528,"Elsa Almeida","1967-06-09",idade(data_nascimento),"F","Medicare",14),(177551020,173621815,"Gonçalo Martins","1953-10-10",idade(data_nascimento),"M","AdvanceCare",10), (257278212,423064602,"Francisco Ribeiro","2004-09-25",idade(data_nascimento),"M","Medicare",16),(275365586,260463437,"Joao Pedro Pais","1970-01-26",idade(data_nascimento),"M","null", 11),(158248466,287376541,"Guilherme Monteiro","1994-10-03",idade(data_nascimento),"M","SNS",13);

INSERT INTO trabalho.Medico (idMedico, nome, NIF, data_nascimento, data_inicio_servico, anos_servico, Especialidade_idEspecialidade, Morada_idMorada) VALUES (1,"João Pereira",152342376, "1982-09-03","2012-05-22",idade(data_inicio_servico),13,2), (2,"Gaspar Carvalho",295829393,"1965-02-01","2007-03-25",idade(data_inicio_servico),11,5),(3,"Sara Pereira",192348395,"1990-12-27","2011-07-04",idade(data_inicio_servico),13,1),(4,"Jorge Santos",214235234,"1980-03-29","2010-02-15",idade(data_inicio_servico),12,4),(5,"Raquel Oliveira",285301352,"1978-12-06","2007-05-24",idade(data_inicio_servico),11,3);

INSERT INTO trabalho.Marcacao (idMarcacao, Paciente_nºutente) VALUES (0,460505826),(1,177551020),(2,125285547),(3,125285547),(4,161432848),(5,218637581),(6,182552802),(7,182552802),(8,257278212),(9,158248466),(10,177551020),(11,275365586),(12,134330630),(13,158248466),(14,134330630),(15,271480643),(16,176616010),(17,125285547),(18,460505826),(19,158248466),(20,275365586);

INSERT INTO trabalho.Contactos (tipo, numero, email, Paciente_nºutente) VALUES ("tel",967044406,"TNjyiOlA@gmail.com",460505826),("tel",933883695,"mGgxMgS@gmail.com",182552802),("telef",252003698,"null",134330630),("tel",968216431,"fHvMLviMBc@gmail.com",218637581),("tel",969306343,"bcYfpAgyG@gmail.com",125285547),("tel",962537975,"tqCvHuHW@gmail.com",271480643),("tel",915730981,"null",161432848),("tel",930916347,"TeCxcjnu@gmail.com",176616010),("telef",254123800,"null",177551020),("tel",917081676,"QvlaGehys@gmail.com",257278212),("tel",963304780,"TGHatQlS@gmail.com",275365586),("tel",937179165,"mfftqIrJPb@gmail.com",158248466);

INSERT INTO trabalho.Exame (idExame, preco, tipo, Equipamento_idEquipamento, Modalidade_idModalidade, Medico_idMedico) VALUES (1,40,"Abdominal",3,4,1),(2,30,"Toráxica",2,5,3),(3,30,"Mama",2,4,1),(4,30,"Obstétrica",3,4,1),(5,30,"Mão",4,5,1),(6,30,"Pé",4,5,3),(7,40,"Lombar",4,5,3),(8,40,"Face",4,5,1),(9,50,"Digestiva Alta",4,2,2),(10,50,"Digestiva Baixa",4,2,5),(11,40,"Transtorácico",1,3,4),(12,40,"Fetal",1,3,4),(13,40,"Transesofágico",5,3,4),(14,100,"Tórax",7,1,1),(15,100,"Crânio",7,1,3),(16,100,"Coluna",6,1,1);

INSERT INTO trabalho.Marcacao_has_Exame (Marcacao_idMarcacao, Marcacao_Paciente_nºutente, Exame_idExame, sala, data, hora_inicio, duracao, hora_fim) VALUES (0,460505826,3,"sala 1","2022-05-26","11:30:00","00:15:00",hora_fim(hora_inicio,duracao)),(1,177551020,8,"sala 3","2021-12-30","17:00:00","00:10:00",hora_fim(hora_inicio,duracao)),(2,125285547,4,"sala 2","2021-10-13","9:30:00","00:15:00",hora_fim(hora_inicio,duracao)),(3,125285547,1, "sala 1","2022-02-10","9:30:00","00:15:00",hora_fim(hora_inicio,duracao)),(4,161432848,2,"sala 4","2022-05-03","16:30:00","00:10:00",hora_fim(hora_inicio,duracao)),(5,218637581,5,"sala 4","2022-05-10","10:00:00","00:10:00",hora_fim(hora_inicio,duracao)),(6,182552802,6,"sala 4","2021-09-27","14:30:00","00:10:00",hora_fim(hora_inicio,duracao)),(7,182552802,9, "sala 5" ,"2022-04-14","10:30:00","00:40:00",hora_fim(hora_inicio,duracao)),(8,257278212,7,"sala 4","2021-12-17","10:00:00","00:10:00",hora_fim(hora_inicio,duracao)),(9,158248466,10,"sala 5","2022-05-23","10:00:00","00:40:00",hora_fim(hora_inicio,duracao)),(10,177551020,11,"sala 6","2021-10-28","09:00:00","00:30:00",hora_fim(hora_inicio,duracao)),(11,275365586,15,"sala 7","2022-03-30","11:00:00","01:00:00",hora_fim(hora_inicio,duracao)),(12,134330630,7,"sala 4","2022-02-11","15:00:00","00:10:00",hora_fim(hora_inicio,duracao)),(13,158248466,13,"sala 6","2021-10-01","09:30:00","00:30:00",hora_fim(hora_inicio,duracao)),(14,134330630,14,"sala 7","2022-03-25","14:00:00","01:00:00",hora_fim(hora_inicio,duracao)),(15,271480643,4,"sala 2","2021-09-22","17:00:00","00:30:00",hora_fim(hora_inicio,duracao)),(16,176616010,12,"sala 2","2021-11-12","14:30:00","00:30:00",hora_fim(hora_inicio,duracao)),(17,125285547,2,"sala 4","2022-03-09","16:30:00","00:10:00",hora_fim(hora_inicio,duracao)),(18,460505826,8,"sala 3","2022-07-13","15:30:00","00:10:00",hora_fim(hora_inicio,duracao)),(19,158248466,10,"sala 5","2022-01-06","15:00:00","00:30:00",hora_fim(hora_inicio,duracao)),(20,275365586,16,"sala 8","2022-01-31","9:30:00","01:00:00",hora_fim(hora_inicio,duracao));

