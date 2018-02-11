create table person(
    id_faz integer primary key not null,
    status varchar(20) not null,
    name varchar(50) not null,
    age integer not null,
    person_id integer references cadastros(id_faz) not null,
    date_person date not null default now()
);

insert into person(id_faz,status,name,age,person_id) VALUES ('01', 'Comprador', 'Geraldo França', 35, '01');
insert into person(id_faz,status,name,age,person_id) VALUES ('02', 'Vendedor', 'Agnaldo Ramos', 31, '02');
insert into person(id_faz,status,name,age,person_id) VALUES ('03', 'Administrador', 'Marcelo Nogueira', 42, '03');
insert into person(id_faz,status,name,age,person_id) VALUES ('04', 'Comprador', 'Ronaldo Aguiar', 48, '04');
insert into person(id_faz,status,name,age,person_id) VALUES ('05', 'Arrendatário', 'Júnior Silva', 30, '05');
insert into person(id_faz,status,name,age,person_id) VALUES ('06', 'Administrador', 'Geraldo França', 42, '03');

select *from person;

/*lista nomes em ordem alfabetica*/
select *from person order by name;

/*lista fazendo junção da tabela pessoa com a tabela cadastros e ordena nome onde id é igual a id*/
select *from person inner join cadastros on (person.person_id = cadastros.id_faz) order by name;

/*lista todos os contatos com id diferente de 1*/
select *from person where id_faz <> 1;

/*
http://pythonclub.com.br/tutorial-postgresql.html
Exemplo de count e inner join
quantas pessoas trabalham em cada fazenda.
*/
select person.name, count(person.person_id) as persons from person inner join cadastros on cadastros.id_faz = person.person_id group by person.name;

/* altera a idade de geraldo frança que foi inserida de forma errada */
update person set name = 'Geraldo França', age = age-7 where id_faz = 6;

select *from person where id_faz = 6;
