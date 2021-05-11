select * from cursos;

select nome, descricao,ano  from cursos where ano >='2018'
order by ano, nome;

select nome, ano from cursos where ano between 2014 and 2015
order by ano desc, nome asc; 

select nome, descricao, ano from cursos where ano in (2014, 2016) order by ano;

select  nome, totaulas, carga from cursos where carga >35 and totaulas <=30;

select * from cursos where nome ='php';

select * from cursos where nome like '%a';

select * from gafanhotos where nome like '%silva%'; 


update cursos set nome ='PáOO' where idcurso='9';

desc cursos;

select  distinct carga from cursos;

select count(*) from cursos;

select count(*) from cursos where carga > 40;

select * from cursos where carga order by carga;

select max(carga) from cursos where ano ='2016';

select min(carga) from cursos where ano;

select sum(carga) from cursos where ano='2016';

select avg(totaulas) from cursos where ano='2016';


select * from gafanhotos;
select nome, sexo from gafanhotos where sexo='f' order by nome;

select * from gafanhotos where nascimento between '2000-01-01' and '2015-12-31';

select * from gafanhotos where profissao='programador' and sexo='M';

select * from gafanhotos where sexo='f' and nacionalidade ='brasil' and nome like 'J%';

select nome, nacionalidade from gafanhotos where sexo='M' and nome like '%silva%'  and peso < 100; 

select max(altura) from gafanhotos where altura and nacionalidade='brasil';

select avg(peso) from gafanhotos;

select min(peso) from gafanhotos where  nacionalidade !='brasil' and sexo='f' and nascimento between '1990-01-01' and '2000-12-31';

select count(*) from gafanhotos where sexo='f' and altura > '1.90';

select carga from cursos group by carga;

select carga, count(nome) from cursos group by carga;

select * from cursos where totaulas =12;

select *from cursos where totaulas = 30;

select ano, count(*) from cursos group by carga having count(*) >5;

select avg(carga) from cursos;

select carga, count(*) from cursos where ano > 2015 group by carga having carga > (select avg(carga) from cursos);


select totaulas from cursos order by totaulas;

 select * from gafanhotos;
 
 select profissao, count(*) from gafanhotos group by profissao order by count(*) desc;
 
 select altura  from gafanhotos where peso > 100;
 
 select sexo, nascimento, count(*) from gafanhotos where nascimento > '2005-01-01'  group by sexo;
 
 select nacionalidade,count(*) from gafanhotos where nacionalidade !='brasil' group by nacionalidade having count(*) >3 order by nacionalidade desc;
 
 select altura, peso, count(*) from gafanhotos where peso > 100 and  altura >  (select avg(altura) from gafanhotos) group by altura order by altura desc;
 
 select altura, count(*) from gafanhotos where peso > 100 and altura > (select avg(altura) from gafanhotos) group by altura order by altura;

