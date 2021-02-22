CREATE TABLE pessoas (
    --INT NOT NULL (não pode ser nulo)
   id  INT NOT NULL PRIMARY KEY AUTOINCREMENT, 
   nome VARCHAR(30) NOT NULL, 
   nascimento DATE 
)

INSERT INTO pessoas (nome,nascimento) VALUES ('nathalia','1996 03 31')
INSERT INTO pessoas (nome,nascimento) VALUES ('gustavo','1990 03 27')
INSERT INTO pessoas (nome,nascimento) VALUES ('marcelo','1996 05 13')
INSERT INTO pessoas (nome,nascimento) VALUES ('carol','1997 09 05')