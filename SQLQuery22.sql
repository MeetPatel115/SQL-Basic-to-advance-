/*create new tabel for*/


create table person(
	id int not null,
	person_name varchar not null,
	birth_date Date,
	phone varchar(10)
	constraint pk_person PRIMARY KEY (id)
)


select * from person