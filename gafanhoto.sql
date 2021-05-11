desc gafanhotos;

select * from cursos;

alter table gafanhotos add column cursoPreferido int; 

alter table gafanhotos add foreign key (cursoPreferido) references cursos(idcursos); 

update gafanhotos set cursoPreferido = '6' where id='1';

select * from gafanhotos;

delete from cursos where idcurso='6';

select nome  from gafanhotos;

select nome, ano from cursos;

select gafanhotos.nome , cursos.nome, cursos.ano from gafanhotos join cursos on cursos.idcurso = gafanhotos.cursoPreferido order by gafanhotos.nome;

select g.nome, c.nome, c.ano from gafanhotos as g right outer join cursos as c on c.idcurso = g.cursoPreferido order by g.nome;

/* relacionar que 1 pessoa pode assistir varios cursos, e cursos pode ser assistidos por varias pessoas. */

create table assiste  ( 
id int not null auto_increment,
 criacao date, idgafanhoto int, 
 idcurso int, primary key(id), 
 foreign key (idgafanhoto) references gafanhotos(id),
 foreign key (idcurso) references cursos(idcurso)
 );

alter table assiste add foreign key (idcurso) references cursos (idcurso);

select * from cursos;

select * from assiste;

insert into assiste values (default, '2013-03-01', '1','2');

select  g.nome, c.nome,  a.idcurso from gafanhotos g join assiste a on g.id = a.idgafanhoto join cursos c on  c.idcurso = a.idcurso;

