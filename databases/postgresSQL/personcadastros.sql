create table person(
    id_faz integer primary key not null,
    status varchar(20),
    name varchar(50),
    age integer,
    person_id integer references cadastros(id_faz),
    date_person date not null default now()
);

insert into person(id_faz,status,name,age,person_id) VALUES ('01', 'Comprador', 'Geraldo França', 35, '01');
insert into person(id_faz,status,name,age,person_id) VALUES ('02', 'Vendedor', 'Agnaldo Ramos', 31, '02');
insert into person(id_faz,status,name,age,person_id) VALUES ('03', 'Administrador', 'Marcelo Nogueira', 42, '03');
insert into person(id_faz,status,name,age,person_id) VALUES ('04', 'Comprador', 'Ronaldo Aguiar', 48, '04');
insert into person(id_faz,status,name,age,person_id) VALUES ('05', 'Arrendatário', 'Júnior Silva', 30, '05');

select *from person;

/*lista nomes em ordem alfabetica*/
select *from person order by name;

/*lista fazendo junção e ordena nome onde id é igual a id*/
select *from person inner join cadastros on (person.person_id = cadastros.id_faz) order by name;

/*lista todos os contatos com id diferente de 1*/
select *from person where id_faz <> 1;

/*
http://pythonclub.com.br/tutorial-postgresql.html
Exemplo de count e inner join
quantas pessoas trabalham em cada fazenda.
*/
select person.name, count(person.person_id) as persons from person inner join cadastros on cadastros.id_faz = person.person_id group by person.name;