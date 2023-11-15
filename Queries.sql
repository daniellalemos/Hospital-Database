# Quantos exames foram realizados por cada paciente?
select p.nome,count(*) from Marcacao m,Paciente p
where m.Paciente_nºutente=p.nºutente
group by p.nome
order by count(*) desc;

# De todos os exames realizados na clínica, qual foi a data e hora do primeiro e último exame?
(select m.data,m.hora_inicio from Marcacao_has_Exame m
order by m.data,m.hora_inicio limit 1)
union all
((select  m2.data, m2.hora_inicio from Marcacao_has_Exame m2
order by m2.data desc, m2.hora_inicio desc) limit 1);

# Qual o preço dos exames realizados pela paciente Carla Guimarães?
select distinct p.nome,ex.tipo, ex.preco from Paciente p, Exame ex, Marcacao m, Marcacao_has_Exame me
where p.nºutente=m.Paciente_nºutente and m.Paciente_nºutente=me.Marcacao_Paciente_nºutente and me.Exame_idExame =ex.idExame and p.nome = 'Carla Guimarães';

# Procurar todos os pacientes que realizaram exames de manhã.
select p.nome,me.hora_inicio from paciente p,marcacao_has_exame me
where me.hora_inicio between '9:00:00' and '12:00:00' and
me.Marcacao_Paciente_nºutente=p.nºutente
order by me.hora_inicio;

# Qual é o nome de todos os médicos e a respetiva especialidade que cada um exerce?
select m.nome, e.designacao
from Medico m
inner join Especialidade e
on m.Especialidade_idEspecialidade=e.idEspecialidade;



