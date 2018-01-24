/*
drop table if exists person;

create table if not exists teste.person(
    person_id integer primary key not null,
    name varchar(50) not null,
    age integer not null,
    status varchar(20) not null,
    id_faz integer references cadastros(id_faz) not null,
    date_person datetime not null default now()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
*/
insert into person(person_id,name,age,status,id_faz) VALUES ('01', 'Geraldo França', 35, 'Comprador', '01');
insert into person(person_id,name,age,status,id_faz) VALUES ('02', 'Agnaldo Ramos', 31, 'Vendedor', '02');
insert into person(person_id,name,age,status,id_faz) VALUES ('03', 'Marcelo Nogueira', 42, 'Administrador', '03');
insert into person(person_id,name,age,status,id_faz) VALUES ('04', 'Ronaldo Aguiar', 48, 'Comprador', '04');
insert into person(person_id,name,age,status,id_faz) VALUES ('05', 'Júnior Silva', 30, 'Arrendatário', '05');
insert into person(person_id,name,age,status,id_faz) VALUES ('06', 'Geraldo França', 42, 'Administrador', '03');

select *from person;

/*lista nomes em ordem alfabetica*/
select *from person order by name;

/*lista todos os contatos com id diferente de 1*/
select *from person where id_faz <> 1;

/*lista fazendo junção da tabela pessoa com a tabela cadastros e ordena nome onde id é igual a id*/
select *from person inner join cadastros on (person.person_id = cadastros.id_faz) order by name;


/*
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

/*retorna ambos os registros exceto registos que começan com Marc*/
select *from person where name not like 'Marc%';
select *from person where name not like 'marc%';

/*conta a quantidade de pessoas cadastradas*/
select count(*) as total from person;

/*conta a quantidade de pessoas listando a data de cadastro*/
select name,(str_to_date(date_person,'%Y-%m-%d %H:%i:%s')) as data_cad, (select count(*) from person) as total from person;
--ou
--select name,(date_format(date_person,'%Y-%m-%d %H:%i:%s')) as data_cad, (select count(*) from person) as total from person;