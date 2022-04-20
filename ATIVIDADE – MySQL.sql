/*atividade 1*/
create DATABASE db_colaboradores;
USE db_colaboradores;
create TABLE tb_colaboradores(
id BIGINT auto_increment,
nome VARCHAR(200),
idade INT,
cpf VARCHAR(200),
salario BIGINT,
area VARCHAR(200),

PRIMARY KEY(id)
);
INSERT INTO tb_colaboradores(nome,idade,cpf,salario,area)
VALUES("Fabio Aparecido",43,"503.134.823.20",100000,"T.I");
INSERT INTO tb_colaboradores(nome,idade,cpf,salario,area)
VALUES("Ruth Souza",26,"501.894.623.15",1500,"Limpeza");
INSERT INTO tb_colaboradores(nome,idade,cpf,salario,area)
VALUES("Glaucia Rosana",33,"503.245.858.02",5600,"Professora");
INSERT INTO tb_colaboradores(nome,idade,cpf,salario,area)
VALUES("Maria Heloisa Santos",19,"693.224.893.46",800,"Jovem Aprendiz");
INSERT INTO tb_colaboradores(nome,idade,cpf,salario,area)
VALUES("Stephanny Gonsalvez",22,"512.180.763.55",9000,"T.I");

SELECT * FROM tb_colaboradores
WHERE salario>2000 ;

SELECT * FROM tb_colaboradores
WHERE salario<2000;

UPDATE tb_colaboradores SET salario=1700, area="Recepcionista" WHERE id=3;



/*atividade 2*/

create DATABASE db_ecommerce;
USE  db_ecommerce;
create TABLE tb_ecommerce(
id BIGINT auto_increment,
roupa VARCHAR(100),
cor VARCHAR(50),
tamanho VARCHAR(30),
valor INT,
brinde VARCHAR(100),
PRIMARY KEY(id)
);
INSERT INTO tb_ecommerce (roupa,cor,tamanho,valor,brinde)
VALUES("BLUSA","rosa","P",700,"BATOM");
INSERT INTO tb_ecommerce (roupa,cor,tamanho,valor,brinde)
VALUES("JAQUETA","preto","unico",900,"regata");
INSERT INTO tb_ecommerce (roupa,cor,tamanho,valor,brinde)
VALUES("vestido","azul com perolas","pp ao gg",1000,"Perfume");
INSERT INTO tb_ecommerce (roupa,cor,tamanho,valor,brinde)
VALUES("meia","branca","34 até o 45",189,"sem brinde,pobre");
INSERT INTO tb_ecommerce (roupa,cor,tamanho,valor,brinde)
VALUES("Calça","cinza","PP ao GG",440,"ta em promoção gata já é o brinde");
INSERT INTO tb_ecommerce (roupa,cor,tamanho,valor,brinde)
VALUES("meia calça","preta ou branca","unico",350,"uma meia");
INSERT INTO tb_ecommerce (roupa,cor,tamanho,valor,brinde)
VALUES("oculos","lente rosa","unico",800,"um pano limpa oculos");
INSERT INTO tb_ecommerce (roupa,cor,tamanho,valor,brinde)
VALUES("colar de rubi","vermelho","-",90000,"rico não precisa de brinde");

SELECT * FROM tb_ecommerce
WHERE valor>500;

SELECT * FROM tb_ecommerce
WHERE valor<500;

UPDATE tb_ecommerce SET valor=200 where id=1;



/*Atividade 3*/
create DATABASE db_escola;
USE db_escola;
create TABLE tb_escola(
id BIGINT AUTO_INCREMENT,
nome VARCHAR (255),
idade int,
serie VARCHAR(50),
nota int,
profesor VARCHAR(100),

PRIMARY KEY (id)
);
INSERT INTO tb_escola(nome,idade,serie,nota,profesor)
values("bruno",14,"9°B",10,"sidney");
INSERT INTO tb_escola(nome,idade,serie,nota,profesor)
values("maria",13,"7°E",4,"Patricia");
INSERT INTO tb_escola(nome,idade,serie,nota,profesor)
values("Leonardo",16,"2°G Médio",7,"Alberto");
INSERT INTO tb_escola(nome,idade,serie,nota,profesor)
values("Jorge",19,"3°A Médio",3,"Raquel");
INSERT INTO tb_escola(nome,idade,serie,nota,profesor)
value("Rayssa",15,"9°C",6,"Sydney");
INSERT INTO tb_escola(nome,idade,serie,nota,profesor)
value("Vinicius vieira",12,"6°D",10,"Paula");
INSERT INTO tb_escola(nome,idade,serie,nota,profesor)
value("Luana Alvez",17,"3°E",8,"Silvestre");
INSERT INTO tb_escola(nome,idade,serie,nota,profesor)
value("Paulo Henrique",14,"8°G",3,"Paula");

SELECT * FROM tb_escola
WHERE nota>7;
SELECT * FROM tb_escola
WHERE nota<7;
UPDATE tb_escola SET nota=9 where id=3;
