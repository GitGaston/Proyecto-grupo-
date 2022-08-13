create database canina_pelu;
use canina_pelu;

create table Dueno
(
DNI int not null primary key,
Nombre varchar (30) not null,
Apellido varchar (30) not null,
Telefono int not null,
Direccion varchar (50) not null
);
create table Perro
(
ID_perro int primary key not null auto_increment,
    Nombre varchar(30),
    Fecha_nac date,
    Sexo varchar(6),
    DNI_dueno int,
    constraint 
    FOREIGN KEY (DNI_dueno) references Dueno (DNI)
);
create table Historial
(
ID_historial int primary key not null auto_increment,
    Fecha date,
    Perro int,
    Descripcion varchar(255),
    Monto int,
    constraint 
    FOREIGN KEY (Perro) references Perro (ID_perro)
);

insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) 
values (44077369, "Magui", "Lopez",4987654, "Paraná 1026");
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) 
values (41234567, "Paloma", "Juarez",4123456, "Buenos Aires 440");


insert into Perro (ID_perro, Nombre, Fecha_nac, Sexo, DNI_dueno) 
values (07, "Manchita", "2018-06-05","Macho", 44077369);
insert into Perro (ID_perro, Nombre, Fecha_nac, Sexo, DNI_dueno) 
values (08, "Gala", "2021-03-01","Hembra", 41234567);

select * 
FROM Perro;
update Perro
SET Fecha_nac = 2017-08-09
WHERE ID_perro = 07 