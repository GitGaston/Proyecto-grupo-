create database Pelu_can;
use Pelu_can;

create table Dueno(ID_dueno int primary key not null auto_increment,
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

insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) values (33111222, "Juan", "Grecia",221555000, "Montes 444");
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) values (31222333, "Leandro", "Napoles",227333111, "Lumbreo 12");
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) values (40211344, "Blas", "Japanese",226225224, "America 777");

insert into Perro (ID_perro, Nombre, Fecha_nac, Sexo, DNI_dueno) values (2, "Chusco", "2011-07-17",
"MACHO", 35111222);
insert into Perro (Nombre, Fecha_nac, Sexo, DNI_dueno) values ("Morfy", "2010-03-11",
"HEMBRA", 32589745);
insert into Perro (Nombre, Fecha_nac, Sexo, DNI_dueno) values ("Cachabacha", "2022-01-15",
"HEMBRA", 40589654);
insert into Perro (Nombre, Fecha_nac, Sexo, DNI_dueno) values ("RedPet", "2002-01-05",
"MACHO", 52111333);
insert into Perro (Nombre, Fecha_nac, Sexo, DNI_dueno) values ("Lady", "2001-04-15",
"MACHO", 40333214);

insert into Perro (paciente, dueño) values ("Carol", "Eugine");

select * from Historial;
delete from Perro where Fecha = '2001';