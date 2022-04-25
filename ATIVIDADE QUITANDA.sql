create DATABASE db_feira;
USE db_feira;
create TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
descricao VARCHAR(255),
fresco BOOLEAN,
PRIMARY KEY (id)
);
INSERT tb_categoria(descricao,fresco)
VALUES("FRUTA",TRUE);
INSERT tb_categoria(descricao,fresco)
VALUES("VERDURA",TRUE);
INSERT tb_categoria(descricao,fresco)
VALUES("LEGUME",TRUE);
INSERT tb_categoria(descricao,fresco)
VALUES("OVO",FALSE);
INSERT tb_categoria(descricao,fresco)
VALUES("TEMPERO",FALSE);

create TABLE tb_produtos(
ID BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
cor  VARCHAR (255),
preço DECIMAL,
quantidade_estoque INT,
PRIMARY KEY (ID),
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);
INSERT tb_produtos (nome,cor,preço,quantidade_estoque,categoria_id)
values("Brocolis","verde",10.00,100,2);
INSERT tb_produtos (nome,cor,preço,quantidade_estoque,categoria_id)
values("tomate","vermelho",8.00,200,1);
INSERT tb_produtos (nome,cor,preço,quantidade_estoque,categoria_id)
values("melancia","verde e vermelho",17.00,100,1);
INSERT tb_produtos (nome,cor,preço,quantidade_estoque,categoria_id )
values("abobrinha","verde",51.00,150,3);
INSERT tb_produtos (nome,cor,preço,quantidade_estoque,categoria_id)
values("abobora","laranja",70.00,60,2);
INSERT tb_produtos (nome,cor,preço,quantidade_estoque,categoria_id)
values("uva","verde",95.00,30,1);
INSERT tb_produtos (nome,cor,preço,quantidade_estoque,categoria_id)
values("feijão","marrom",89.00,90,3);
INSERT tb_produtos (nome,cor,preço,quantidade_estoque,categoria_id )
values("maracuja","amarelo",77.00,66,1);
INSERT tb_produtos (nome,cor,preço,quantidade_estoque,categoria_id)
values("Paprica","vermelho",100.00,79,5);
INSERT tb_produtos (nome,cor,preço,quantidade_estoque,categoria_id)
values("ovo","branco",50.00,190,4);
INSERT tb_produtos (nome,cor,preço,quantidade_estoque,categoria_id)
values("caqui","vermelho",120.00,79,1);
INSERT tb_produtos (nome,cor,preço,quantidade_estoque,categoria_id)
values("lemon pepper","amarelo",120.00,200,5);

SELECT * FROM tb_produtos;
SELECT * FROM tb_categoria;
SELECT * FROM tb_produtos INNER JOIN tb_categoria on tb_categoria.id=tb_produtos.categoria_id;
SELECT * FROM tb_produtos WHERE preço >50;
SELECT * FROM tb_produtos WHERE nome LIKE '%a%';

UPDATE tb_produtos SET preço=60.00 WHERE id=6;