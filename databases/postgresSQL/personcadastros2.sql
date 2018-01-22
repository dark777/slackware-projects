create table person(
    person_id integer primary key not null,
    name varchar(50),
    age integer,
    status varchar(20),
    id_faz integer references cadastros(id_faz),
    date_person date not null default now()
);


insert into person(person_id,name,age,status,id_faz) VALUES ('01', 'Geraldo França', 35, 'Comprador', '01');
insert into person(person_id,name,age,status,id_faz) VALUES ('02', 'Agnaldo Ramos', 31, 'Vendedor', '02');
insert into person(person_id,name,age,status,id_faz) VALUES ('03', 'Marcelo Nogueira', 42, 'Administrador', '03');
insert into person(person_id,name,age,status,id_faz) VALUES ('04', 'Ronaldo Aguiar', 48, 'Comprador', '04');
insert into person(person_id,name,age,status,id_faz) VALUES ('05', 'Júnior Silva', 30, 'Arrendatário', '05');
insert into person(person_id,name,age,status,id_faz) VALUES ('06', 'Geraldo França', 42, 'Administrador', '03');

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
select person.name, count(person.person_id) as persons from person inner join cadastros on cadastros.id_faz = person.id_faz group by person.name; 


/* altera a idade de geraldo frança que foi inserida de forma errada */
update person set name = 'Geraldo França', age = age-7 where person_id = 6;

/*lista a Geraldo França pelo person_id*/
select *from person where person_id = 6;

/*lista Geraldo França por select count caso o cadastro alterado seja o ultimo id*/
select *from person where person_id = (select count(*) from person);

/*lista Marcelo Nogueira subtraindo pelo ultimo id */
select *from person where person_id = ((select count(*) from person)-3);

/*lista pessoa pelo nome*/
select *from person where name='Marcelo Nogueira';

/*lista todos os nomes*/
select *from person where name like '%';

/*comando like lista nome completo começando com Marc*/
select *from person where name like 'Marc%';

/*lista nome completo de Marcelo*/
select *from person where name~~'Marc%';

/*comando ilike retorna nome completo buscando por tags minuscula mesmo que estejam em maiusculas*/
select *from person where name ilike 'marc%';

/*retorna ambos os registros exceto registos que começan com Marc*/
select *from person where name!~~'Marc%';
select *from person where name not like 'Marc%';
select *from person where name not ilike 'marc%';

/*conta a quantidade de pessoas cadastradas*/
select count(*) as total from person;

/*conta a quantidade de pessoas listando a data de cadastro*/
select name,(to_char(date_person,'YYYY-MM-DD')) as data_cad, (select count(*) from person) as total from person;