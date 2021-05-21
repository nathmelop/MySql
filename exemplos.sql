create table assiste  ( 
id int not null auto_increment,
 criacao date, idgafanhoto int, 
 idcurso int, primary key(id), 
 foreign key (idgafanhoto) references gafanhotos(id),
 foreign key (idcurso) references cursos(idcurso)
 );

alter table assiste add foreign key (idcurso) references cursos (idcurso);


create table empregado ( 
id int primary key null auto_increment, 
nome varchar(30), 
idade tinyint );