create database pelu_canina;
use pelu_canina;
create table Dueno(
DNI int not null primary key,
Nombre varchar (50) not null,
Apellido varchar (50) not null,
Telefono int not null,
Direccion varchar (50) not null
);

create table Perro(ID_perro int primary key not null auto_increment,
    Nombre varchar(30),
    Fecha_nac date,
    Sexo varchar(6),
    DNI_dueno int,
    constraint FOREIGN KEY (DNI_dueno) references Dueno (DNI)
);
create table Historial(ID_historial int primary key not null auto_increment,
    Fecha date,
    Perro int,
    Descripcion varchar(255),
    Monto int,
    constraint FOREIGN KEY (Perro) references Perro (ID_perro)
);





insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) values (34029655, "Marco", "Correa", 444444, "Ostwald 6082");
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) values (32926484, "Florencia", "Gorostiaga", 555555, "Guillermo 2174");
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) values (31856748, "Pedro", "Ladrador", 666666, "La rioja 66");
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) values (6666666, "Pedro", "Gaucho", 33333, "Catamarca 999");


insert into Perro (Nombre, Fecha_nac, Sexo, DNI_dueno) values ("fantasma", "2022-07-21", "Macho", 34029655);
insert into Perro (Nombre, Fecha_nac, Sexo, DNI_dueno) values ("Olivia", "2021-04-15", "Hembra", 32926484); 
insert into Perro (Nombre, Fecha_nac, Sexo, DNI_dueno) values ("Terri", "2015-09-07", "Macho",31856748 );
insert into Perro (Nombre, Fecha_nac, Sexo, DNI_dueno) values ("Tobi", "2016-08-25", "Hembra", 6666666);

-- Realice una consulta multitabla que arroje el nombre de todos los perros cuyos dueños se llaman Pedro

select * from Dueno
select * from Perro
select * from Historial

select Perro.Nombre
from Perro INNER JOIN Dueno ON DNI_dueno = DNI 
Where Dueno.Nombre = "Pedro" 





