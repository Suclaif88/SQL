-- Tabla: Clientes
CREATE TABLE Clientes (
    Documento CHAR(10) PRIMARY KEY,
    Nombre VARCHAR(25),
    Apellido VARCHAR(30),
    Celular CHAR(10),
    F_Nacimiento DATE,
    Correo VARCHAR(50),
    Direccion VARCHAR(50)
);

-- Tabla: Tipo_Vehiculo
CREATE TABLE Tipo_Vehiculo (
    Id_Tipo_Vehiculo TINYINT PRIMARY KEY IDENTITY(1,1),
    Nombre CHAR(5),
    Numero_Ruedas TINYINT,
    Descripcion VARCHAR(2000)
);

-- Tabla: Vehiculo
CREATE TABLE Vehiculo (
    Placa CHAR(7) PRIMARY KEY,
    Modelo VARCHAR(25),
    Marca VARCHAR(25),
    Color VARCHAR(25),
    Transmision TINYINT,
    Documento CHAR(10),
    Id_Tipo_Vehiculo TINYINT,
    FOREIGN KEY (Documento) REFERENCES Clientes(Documento),
    FOREIGN KEY (Id_Tipo_Vehiculo) REFERENCES Tipo_Vehiculo(Id_Tipo_Vehiculo)
);

-- Tabla: Tipo_Producto
CREATE TABLE Tipo_Producto (
    Id_tipo_producto TINYINT PRIMARY KEY IDENTITY(1,1),
    Descripcion VARCHAR(50)
);

-- Tabla: Productos
CREATE TABLE Productos (
    Id_producto SMALLINT PRIMARY KEY IDENTITY(1,1),
    Id_tipo_producto TINYINT,
    Cantidad_Stock SMALLINT,
    Nombre VARCHAR(25),
    Precio FLOAT,
    FOREIGN KEY (Id_tipo_producto) REFERENCES Tipo_Producto(Id_tipo_producto)
);

-- Tabla: Servicios
CREATE TABLE Servicios (
    Id_Servicios SMALLINT PRIMARY KEY IDENTITY(1,1),
    Nombre_Servicio VARCHAR(50),
    Precio FLOAT,
    Descripcion VARCHAR(1000)
);

-- Tabla: Mecanico
CREATE TABLE Mecanico (
    Documento CHAR(10) PRIMARY KEY,
    Nombre VARCHAR(25),
    Apellido VARCHAR(30),
    Celular VARCHAR(10),
    F_Nacimiento DATE,
    Correo VARCHAR(50)
);

-- Tabla: Metodo_Pago
CREATE TABLE Metodo_Pago (
    Id_Metodo_Pago TINYINT PRIMARY KEY IDENTITY(1,1),
    Tipo CHAR(8)
);

-- Tabla: Datos_Empresa
CREATE TABLE Datos_Empresa (
    NIT CHAR(9) PRIMARY KEY,
    Nombre VARCHAR(25),
    Telefono VARCHAR(10),
    Correo VARCHAR(50),
    Direccion VARCHAR(50)
);

-- Tabla: Factura
CREATE TABLE Factura (
    Id_factura INT PRIMARY KEY IDENTITY(1,1),
    Fecha DATETIME,
    Placa CHAR(7),
    Documento_M CHAR(10),
    Id_Metodo_Pago TINYINT,
    NIT CHAR(9),
    Total FLOAT,
    Subtotal FLOAT,
    Iva FLOAT,
    Descuento FLOAT,
    FOREIGN KEY (Placa) REFERENCES Vehiculo(Placa),
    FOREIGN KEY (Documento_M) REFERENCES Mecanico(Documento),
    FOREIGN KEY (Id_Metodo_Pago) REFERENCES Metodo_Pago(Id_Metodo_Pago),
    FOREIGN KEY (NIT) REFERENCES Datos_Empresa(NIT)
);

-- Tabla: Detalle_Servicio
CREATE TABLE Detalle_Servicio (
    Id_Detalle_Servicio TINYINT PRIMARY KEY IDENTITY(1,1),
    Id_Factura INT,
    Id_Servicio SMALLINT,
    Precio FLOAT,
    Cantidad TINYINT,
    FOREIGN KEY (Id_Factura) REFERENCES Factura(Id_factura),
    FOREIGN KEY (Id_Servicio) REFERENCES Servicios(Id_Servicios)
);

-- Tabla: Detalle_Producto
CREATE TABLE Detalle_Producto (
    Id_Detalle_Producto TINYINT PRIMARY KEY IDENTITY(1,1),
    Id_Factura INT,
    Id_producto SMALLINT,
    Precio FLOAT,
    Cantidad TINYINT,
    FOREIGN KEY (Id_Factura) REFERENCES Factura(Id_factura),
    FOREIGN KEY (Id_producto) REFERENCES Productos(Id_producto)
);
