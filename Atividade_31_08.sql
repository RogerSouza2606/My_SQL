
use primeiro_banco_de_dados;

CREATE TABLE contatos(
nome varchar(100),
endereco varchar(100),
telefone varchar(100)
);

insert into contatos values ("Roger", "Qr 302 conj. G Casa 31", "(61)99292-9445");
insert into contatos values("Renan", "Qr 303 conj. A Casa 22", "(61)94252-9784");
insert into contatos values("Eloah", "Qr 210 conj. M Casa 2", "(61)99796-9345");
insert into contatos values("Rafael", "Qr 301 conj. D Casa 35", "(61)99872-6309");
insert into contatos values("Victória","Qr 211 conj. A Casa 11", "(61)99130-8456");
insert into contatos values("Daniel","Qr 304 conj. B Casa 33", "(61)99098-6487");
insert into contatos values("Júlia", "Qr 209 conj. H Casa 29", "(61)99837-4948");
insert into contatos values("Danielly", "Qr 210 conj. F Casa 15", "(61)99123-4567");
insert into contatos values("Rafaela", "Qr 110 conj. G Casa 23", "(61)99993-3423");
insert into contatos values("Nathan", "Qr 201 conj. L Casa 12", "(61)99374-8362");

select * from contatos;

select count(*) from contatos;

select concat(nome) from contatos;
select concat(nome," ", telefone) from contatos;

create database banco_de_dados_do_cliente;

use banco_de_dados_do_cliente;

create table cliente(
nome varchar(100),
telefone varchar(100),
endereco varchar(100),
cpf varchar(100),
email varchar(100),
idade int
);

insert into cliente values("Roger", "(61)9 1234-5678", "Santa Maria, Brasília, Distrito Federal", "123.456.789-10", "rogerlindo@gmail.com", 16),
("Renan", "(61)94252-9784", "Santa Maria, Brasília, Distrito Federal", "126.476.618-50", null, 17),
("Eloah", "(61)99796-9345", "Santa Maria, Brasília, Distrito Federal", "222.555.666-99", "eloah@gmail.com", 16),
("Rafael", "(61)99872-6309", "Santa Maria, Brasília, Distrito Federal", "111.444.777-99", null, 18),
("Victória", "(61)99130-8456", "Santa Maria, Brasília, Distrito Federal", "333.666.677-50", "vic@gmail.com", 16),
("Daniel", null, "Ceilândia, Brasília, Distrito Federal", "190.456.345-14", "daniel@gmail.com", 17),
("Júlia", "(61)99837-4948", "Park Way, Brasília, Distrito Federal", "723.826.629-82", "julia@gmail.com", 23),
("Danielly", "(61)99123-4567", "Samambaia, Brasília, Distrito Federal", "273.493.623-15", "dany@gmail.com", 34),
("Rafaela", "(61)99993-3423", "Asa Norte, Brasília, Distrito Federal", "223.556.778-99", "rafa@gmail.com", 24),
("Nathan", "(61)99374-8362", "Planaltina, Brasília, Distrito Federal", "450.234.098-23", "nathan@gmail.com", 24),
("Maria Clara", "(61)9 9876-5432", "Gama, Brasília, Distrito Federal", "836.876.786-23", "maryclear@gmail.com", 19),
("Jordana", "(61)9 4950-3921", "Planaltina, Brasília, Distrito Federal", "374.974.673-73", "jojo@gmail.com", 20),
("Thifany", "(61)9 9003-3847", "Asa Sul, Brasília, Distrito Federal", "832.745.984.12", null, 21),
("Miguel", "(61)9 8634-0843", "Sobradinho ||, Brasília, Distrito Federal", "425.524.254-25", "miguel@gmail.com", 33),
("Ronni", null, "Santa Maria, Brasília, Distrito Federal", "826-837-834.56","ronni@gmail.com", 50);

select * from cliente;

select nome from cliente where email is null;
select nome from cliente where telefone is null;

