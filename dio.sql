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

Atualizar Dados 

UPDATE pessoa SET nome='Nathalia Melo'
com id 
UPDATE pessoa SET nome='Nathalia Melo' WHERE id=5; 

Deletar dados 

DELETE FROM pessoas WHERE id=6; 
quando ele é deletado não tem como voltar atrás. 

Ordenando Dados 

SELECT * FROM pessoas ORDER BY nome DESC 
-- usa o desc se voce quiser fazer de forma decrescente

SELECT COUNT(id), genero FROM pessoa GROUP BY genero 
-- contar a quantidade do determinado item que você quer 