create table cadastros(
id_faz integer primary key not null,
nome_faz varchar(25),
data_compra date
);

insert into cadastros(id_faz,nome_faz,data_compra) values ('01', 'Boi Preto', '2000-02-29');
insert into cadastros(id_faz,nome_faz,data_compra) values ('02', 'Sol Nascente', '2009-10-01');
insert into cadastros(id_faz,nome_faz,data_compra) values ('03', 'Parque Belo', '2007-03-15');
insert into cadastros(id_faz,nome_faz,data_compra) values ('04', 'Pedra Bonita', '2001-08-25');
insert into cadastros(id_faz,nome_faz,data_compra) values ('05', 'Nossa Senhora', '2011-06-22');

select *from cadastros;