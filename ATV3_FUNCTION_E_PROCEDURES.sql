USE aula5;

/*1)*/

DELIMITER //
CREATE FUNCTION insert_return(cod INTEGER, nasc DATE, cred INTEGER, mgp DOUBLE, nome VARCHAR(60), email VARCHAR(30)) RETURNS VARCHAR

BEGIN

	INSERT INTO aluno(cod_curso, data_nasc, tot_cred, mgp, nom_alun, email) VALUES
    (cod, nasc, cred, mgp, nome, email);
    
    RETURN nome

END;

DELIMITER %%


/*2)*/

DELIMITER $$

CREATE PROCEDURE umAte5()

BEGIN
	DECLARE cont INT DEFAULT 0;
    DECLARE result VARCHAR(100) DEFAULT '';
	while cont < 5 do
    
		set cont = cont + 1;
        set result = concat(result, cont, ",");
        
    end while;
	
    select result;
END $$


DELIMITER \\

/*3)*/

DELIMITER %%

CREATE PROCEDURE umAte9()

BEGIN
	DECLARE cont INT DEFAULT 0;
    DECLARE result VARCHAR(100) DEFAULT '';
	while cont < 9 do
    
		set cont = cont + 1;
        set result = concat(result, cont, ",");
        
    end while;
	
    select result;
END $$


DELIMITER //
