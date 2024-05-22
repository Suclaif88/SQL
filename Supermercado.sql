use supermercado

create table clientes(
documento char (11) primary key not null,
nombre varchar (20) not null,
apellido Varchar (20) not null,
direccion varchar (15) null,
correo varchar (50) not null,
celular char (10) not null,
fecha_nacimiento date 
)

create table tipo_producto(
id_tipo tinyint IDENTITY (1,1) primary key not null,
nombre varchar (20) not null,
descripcion varchar (50) not null
)

create table productos(
id_producto int IDENTITY (1,1) primary key not null,
nombre varchar (20),
descripcion varchar(1000) null,
precio float not null,
stock tinyint not null,
id_tipo tinyint,
foreign key (id_tipo) references tipo_producto(id_tipo)
)

create table empresa(
NIT char (9) primary key not null,
nombre varchar (25) not null,
direccion varchar (50) not null,
telefono varchar (10) not null,
correo varchar (50)
)

create table metodo_pago(
id_metodo tinyint IDENTITY (1,1) primary key not null,
nombre char (8) not null
)

create table cajero(
documento char (11) primary key not null,
nombre varchar (20) not null,
apellido Varchar (20) not null,
correo varchar (50) not null,
celular char (10) not null,
fecha_nacimiento date
)

create table factura(
id_factura smallint IDENTITY (1,1) primary key not null,
subtotal decimal not null,
doc_cliente char (11) not null,
doc_cajero char (11) not null,
fecha datetime,
NIT char (9) not null,
IVA decimal not null,
descuentos decimal not null,
id_metodo tinyint not null,
total decimal
foreign key (doc_cliente) references clientes(documento),
foreign key (doc_cajero) references cajero(documento),
foreign key (NIT) references empresa(NIT),
foreign key (id_metodo) references metodo_pago(id_metodo)
)

create table detalle_factura (
id_detalle tinyint IDENTITY (1,1) primary key not null,
id_factura smallint not null,
id_producto int not null,
cantidad tinyint not null,
precio decimal not null
foreign key (Id_factura) references factura(id_factura),
foreign key (id_producto) references productos(id_producto)
)
