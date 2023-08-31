create database primeiro_banco_de_dados;

use primeiro_banco_de_dados;

create table pessoa(
	nome varchar(50),
    idade int,
    altura double,
    genero varchar(50)
);

show tables;

desc pessoa;

insert into pessoa values("Roger", 16, 1.68, "Masculino");
insert into pessoa(nome, idade) values("Renan", 17);
insert into pessoa values("Rafael", 17, 1.80, "Masculino"),
("Ronni", 16, 1.75, "Masculino");

select * from pessoa;  

#Varchar = caracteres variantes 
#char = tamanho fixo
#binary = números biários 
#bloob = salvar imagens 
#longtext = textos longos à partir de 255 caracteres 
#4,294,967,295 numero maximo de caracteres 
#enum = dados predefinidos 

create table pedido(
	nome_produto varchar(50),
    quantidade integer,
    preco double,
    pedidos_status enum("Preparando", "A caminho", "Entregue", "Cancelado")
);

insert into pedido values("Macarrao ao molho Branco", 2, 28.00, "Preparando"),
("Lasanha", 4, 15.00, "A caminho"),
("Arroz Doce", 3, 12.50, "Entregue"),
("Bolo de chocolate", 5, 25.45, "Cancelado");

select * from pedido;

select nome, idade from pessoa;

select (3 * 2);

select nome, idade from pessoa where genero = "Masculino";

select idade from pessoa where nome = "Renan";

insert into pessoa values("Luis Gustavo", 15, 1.75, "Masculino");

create table clientes(
	nome varchar(100),
    idade int,
    cpf varchar(100),
    endereco varchar(100),
    telefone Varchar(100)
);

insert into clientes values("Roger", 16, "123.456.678-90", "Qr 302 conj. G Casa 31", "(61)99292-9445"),
("Renan", 17, "126.476.618-50", "Qr 303 conj. A Casa 22", "(61)94252-9784"),
("Eloah", 16, "222.555.666-99", "Qr 210 conj. M Casa 2", "(61)99796-9345"),
("Rafael", 17, "111.444.777-99", "Qr 301 conj. D Casa 35", "(61)99872-6309"),
("Victória", 16, "333.666.677-50", "Qr 211 conj. A Casa 11", "(61)99130-8456"),
("Daniel", 25, "190.456.345-14", "Qr 304 conj. B Casa 33", "(61)99098-6487"),
("Júlia", 18, "723.826.629-82", "Qr 209 conj. H Casa 29", "(61)99837-4948"),
("Danielly", 29, "273.493.623-15", "Qr 210 conj. F Casa 15", "(61)99123-4567"),
("Rafaela", 23, "223.556.778-99", "Qr 110 conj. G Casa 23", "(61)99993-3423"),
("Nathan", 35, "450.234.098-23", "Qr 201 conj. L Casa 12", "(61)99374-8362");

select * from clientes;

Drop table clientes;

create table clientes(
	nome varchar(100),
    idade int,
    cpf varchar(100),
    endereco varchar(100),
    telefone Varchar(100)
);

insert into clientes values("Roger", 16, "123.456.678-90", "Qr 302 conj. G Casa 31", "(61)99292-9445"),
("Renan", 17, "126.476.618-50", "Qr 303 conj. A Casa 22", "(61)94252-9784"),
("Eloah", 16, "222.555.666-99", "Qr 210 conj. M Casa 2", "(61)99796-9345"),
("Rafael", 17, "111.444.777-99", "Qr 301 conj. D Casa 35", "(61)99872-6309"),
("Victória", 16, "333.666.677-50", "Qr 211 conj. A Casa 11", "(61)99130-8456"),
("Daniel", 25, "190.456.345-14", "Qr 304 conj. B Casa 33", "(61)99098-6487"),
("Júlia", 18, "723.826.629-82", "Qr 209 conj. H Casa 29", "(61)99837-4948"),
("Danielly", 29, "273.493.623-15", "Qr 210 conj. F Casa 15", "(61)99123-4567"),
("Rafaela", 23, "223.556.778-99", "Qr 110 conj. G Casa 23", "(61)99993-3423"),
("Nathan", 35, "450.234.098-23", "Qr 201 conj. L Casa 12", "(61)99374-8362");

select * from clientes;

insert into clientes values("Reinaldo", null, "123.656.698-20", "Qr 300 conj. G Casa 31", "(61)99242-9445"),
("Matheus", 35, "122.445.128-90", "Qr 210 conj. G Casa 31", null);

select * from clientes;

select nome, telefone from clientes where idade > 30 and cpf like "%123%";
select nome, telefone from clientes where idade > 30 or cpf like "%123%";

select count(*) from clientes;
#as = alias, mostre o dado como:
select count(*) as contador from clientes;
select count(*) as "Contador de clientes" from clientes;

select count(telefone), nome from clientes group  by nome order by nome;

select nome from clientes where idade is null;
select nome from clientes where telefone is null;

update clientes  set idade = 16;
update clientes set telefone = "(61)99556-9977";
update clientes set telefone = "(61)99556-9977" where nome = "Matheus";
set sql_safe_updates = 0;

select * from clientes;

create table errada(
nome varchar(50),
autura double, 
pezo double
);

alter table errada add cpf varchar(20);

select * from errada;

desc errada;

alter table  errada drop column autura;

alter table errada  rename column pezo to peso;

alter table errada modify column peso double not null;

Insert into errada values ("Roger", 100.50, "12345678910");

alter table errada modify column peso double not null first;
alter table errada modify column peso double not null after nome;

select concat(nome, " pesa ", peso, " e seu cpf é ", cpf)as "informação" from errada;

delete from cliente where nome = "Renan";

