create table persons (
    name varchar(20) check ( name != '' ),
                         surname varchar(50) check ( surname != ''),
                         age int check ( age >= 0 ),
                         phone_number varchar(20),
                         city_of_living varchar(50),
                         primary key (name, surname, age)
);

insert into persons (name, surname, age, phone_number, city_of_living)
values ('Serho', 'Novikov', 29, '+7 495 999 88 77', 'Moscow');
insert into persons (name, surname, age, phone_number, city_of_living)
values ('Anna', 'Tobova', 54, '+7 495 777 88 77', 'MOSCOW');
insert into persons (name, surname, age, phone_number, city_of_living)
values ('Van', 'Minivan', 30, '+7 666 666 66 66', 'moscow');
insert into persons (name, surname, age, phone_number, city_of_living)
values ('Lusi', 'Peres', 20, '+7 000 222 4 87', 'Madrid');
insert into persons (name, surname, age, phone_number, city_of_living)
values ('Niko', 'Polo', 40, '+8964156666', 'paris');
insert into persons (name, surname, age, phone_number, city_of_living)
values ('Sonia', 'Dorohova', 19, '+78965641866', 'NY');

select name, surname from persons
where upper(city_of_living) = 'MOSCOW';

select * from persons
where age > 27
order by age DESC