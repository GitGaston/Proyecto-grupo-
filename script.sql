create database peluqueria_canina;
use peluqueria_canina;
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
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) values (35478965, "Gonzalo", "Erreca",4568745, "Gral Paz 586");
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) values (32589745, "Javier", "Perez",5689748, "San Martin 1000");
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) values (40589654, "Guido", "Lopez",8758930, "Lima 555");

insert into Perro (ID_perro, Nombre, Fecha_nac, Sexo, DNI_dueno) values (3, "Puchi", "2010-07-07",
"Macho", 35478965);
insert into Perro (Nombre, Fecha_nac, Sexo, DNI_dueno) values ("Coco", "2021-03-10",
"Macho", 32589745);
insert into Perro (Nombre, Fecha_nac, Sexo, DNI_dueno) values ("Bartolo", "2020-01-25",
"Macho", 40589654);
insert into Perro (Nombre, Fecha_nac, Sexo, DNI_dueno) values ("Bartolo", "2020-01-25",
"Macho", 5);
insert into Perro (Nombre, Fecha_nac, Sexo, DNI_dueno) values ("Luna", "2021-01-25",
"Hembra", 40589654);
select * from Perro;
delete from Perro where id_perro=5;
Select * from perro where sexo = "macho" and
EXTRACT(year FROM fecha_nac) between 2020 and 2022;



