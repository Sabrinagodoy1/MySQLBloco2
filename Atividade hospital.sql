create DATABASE db_hospital;
USE db_hospital;
create TABLE tb_medicos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
idade INT,
especificacao VARCHAR (255),
PRIMARY KEY (id)
);
INSERT tb_medicos (nome, idade, especificacao)
VALUE("Alessandra souza",33,"Pediatra");
INSERT tb_medicos (nome, idade, especificacao)
VALUE("Marcelo De Pinheiros",55,"Clinico Geral");
INSERT tb_medicos (nome, idade, especificacao)
VALUE("Bianca Ferraz Da Silva",22,"Oftalmologista");
INSERT tb_medicos (nome, idade, especificacao)
VALUE("Barbara Lima De Souza",27,"Ginicologista");
INSERT tb_medicos (nome, idade, especificacao)
VALUE("Murilo Menezes",67,"uncologista");
INSERT tb_medicos (nome, idade, especificacao)
VALUE("Daniel Rodriguez",25,"otorrino");

create TABLE tb_pacientes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255),
idade INT,
CPF VARCHAR(255),
dor BOOLEAN,
PRIMARY KEY (id),
medicos_id BIGINT,
FOREIGN KEY (medicos_id) REFERENCES tb_medicos(id)
);
INSERT tb_pacientes (nome, idade,CPF, dor,medicos_id)
VALUE("Jaqueline Mariano Da Silva",22,"509.134.567-22",true,2);
INSERT tb_pacientes (nome, idade,CPF, dor,medicos_id)
VALUE("Livia Da silva Godoy",12,"807.164.907-92",false,1);
INSERT tb_pacientes (nome, idade,CPF, dor,medicos_id)
VALUE("Marlene De Ferraz",55,"397.197.124-77",true,4);
INSERT tb_pacientes (nome, idade,CPF, dor,medicos_id)
VALUE("Luan Da silva De Jesus",35,"412.195.158-02",false,6);
INSERT tb_pacientes (nome, idade,CPF, dor,medicos_id)
VALUE("Alexandre Pinto De Jesus",52,"245.987.123-82",true,5);
INSERT tb_pacientes (nome, idade,CPF, dor,medicos_id)
VALUE("Maria Aparecida Balbino",54,"107.890.867-75",false,3);
INSERT tb_pacientes (nome, idade,CPF, dor,medicos_id)
VALUE("Jennifer Goulart Da Silva",15,"597.969.712-14",true,1);
INSERT tb_pacientes (nome, idade,CPF, dor,medicos_id)
VALUE("Celso De Oliveira",78,"119.758.196-44",true,6);
INSERT tb_pacientes (nome, idade,CPF, dor,medicos_id)
VALUE("Monique Fernadez de Souza",34,"400.289.922-11",false,4);

SELECT * FROM tb_medicos;
SELECT * FROM tb_pacientes;
SELECT * FROM tb_pacientes INNER JOIN  tb_medicos ON tb_medicos.id=tb_pacientes.id;
Select * FROM tb_pacientes Where dor=true;
update tb_medicos set idade =23 where id=5;


