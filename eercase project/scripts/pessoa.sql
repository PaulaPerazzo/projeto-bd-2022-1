-- creating table
CREATE TABLE PESSOA(
    ID_PRODUTOR NUMBER NOT NULL,
    IDADE NUMBER NOT NULL,
    NOME_COMPLETO VARCHAR(50) NOT NULL,
    CIDADE_NASCIMENTO VARCHAR(25),
    PAIS_NASCIMENTO VARCHAR(25),
    TIPO VARCHAR(20),
    ID_OBRA_MAIS_CONHECIDA NUMBER,
    ID_SUPERIOR NUMBER,
    
    CONSTRAINT PK_PESSOA PRIMARY KEY(ID_PRODUTOR)
); 

-- adding foreign keys (only add when these are done)
ALTER TABLE PESSOA ADD CONSTRAINT FK_PESSOA_OBRA
FOREIGN KEY (ID_OBRA_MAIS_CONHECIDA)
REFERENCES FILME(ID_FILME);

-- populating table
INSERT INTO PESSOA(ID_PRODUTOR, IDADE, NOME_COMPLETO, TIPO)
VALUES(111, 20, 'Alfred Hitchcock', 'diretor');

INSERT INTO PESSOA(ID_PRODUTOR, IDADE, NOME_COMPLETO, TIPO)
VALUES(222, 30, 'Hannah Montanna', 'atriz');

INSERT INTO PESSOA(ID_PRODUTOR, IDADE, NOME_COMPLETO, TIPO)
VALUES(333, 40, 'Martin Scorsese', 'diretor');

INSERT INTO PESSOA(ID_PRODUTOR, IDADE, NOME_COMPLETO, TIPO)
VALUES(4444, 50, 'Akira Kurosawa', 'diretor');

INSERT INTO PESSOA(ID_PRODUTOR, IDADE, NOME_COMPLETO, TIPO)
VALUES(555, 25, 'Elton John', 'estagiario');

-- projecting data
SELECT * FROM PESSOA;
