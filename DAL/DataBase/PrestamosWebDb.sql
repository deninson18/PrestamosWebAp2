create database PrestamosWebDb;

use PrestamosWebDb;

create table Usuarios(
UsuarioId int primary key identity(1,1),
Nombres varchar(30),
Apellidos varchar(30),
NombreUsuario varchar(40),
Contrasena varchar(50),
AreaUsuario varchar(30));

create table Cobradores(
CobradorId int primary key identity(1,1),
Nombres varchar(30),
Apellidos varchar(30),
Direccion varchar(100),
Telefono varchar(14),
Celular varchar(14),
Cedula varchar(13));

create table Rutas(
RutaId int primary key identity(1,1),
NombreRuta varchar(100),
CobradorId int references Cobradores(CobradorId));

go
create table Clientes(ClienteId int primary key  identity(1,1),
Nombres varchar(30),
Apellidos varchar(30),
Apodos varchar(30),
Direccion varchar(100),
Referencia varchar(50),
Sexo int,
Cedula varchar(13),
Telefono varchar(14),
Celular varchar(14));
go
create table Prestamos(PrestamoId int primary key identity(1,1),
ClienteId int references Clientes(ClienteId),
RutaId int references Rutas(RutaId),
FechaInicial varchar(30),
FechaVencimiento varchar(30),
Monto float,
Semana int,
Interes float
ValorCuota int,
PagoTotal float,
Ganancia float,
);


 Create table Cobros(CobrosId int primary key identity(1,1),
 PrestamoId int references Prestamos(PrestamoId),
 Fecha varchar(20),
 CantidadCuota int,
 Cuota float,
 Abono float,
 Total float,
);

go                            
create table NoCobrados(NoCobradosId int primary key(1,1),
PrestamoId int references Prestamos(PrestamoId),
Cuota float,
TotalnoPagos float);


select * from Usuarios;
select * from Rutas;
select * from Cobradores;
select * from Clientes;
select * from Prestamos;

drop table Usuarios;
drop table Rutas;
drop table Cobradores;
drop table Clientes;
drop table Prestamos;
drop table Atrasos;
drop table RutasCobradores;
