USE [Supermercado]
GO
/****** Object:  Schema [supermercado]    Script Date: 22/05/2024 12:03:13 a. m. ******/
CREATE SCHEMA [supermercado]
GO
/****** Object:  Table [supermercado].[cajeros]    Script Date: 22/05/2024 12:03:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [supermercado].[cajeros](
	[cajero_id] [int] IDENTITY(4,1) NOT NULL,
	[nombre] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_cajeros_cajero_id] PRIMARY KEY CLUSTERED 
(
	[cajero_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [supermercado].[categorias_productos]    Script Date: 22/05/2024 12:03:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [supermercado].[categorias_productos](
	[categoria_id] [int] IDENTITY(4,1) NOT NULL,
	[nombre] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_categorias_productos_categoria_id] PRIMARY KEY CLUSTERED 
(
	[categoria_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [supermercado].[clientes]    Script Date: 22/05/2024 12:03:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [supermercado].[clientes](
	[cliente_id] [int] IDENTITY(21,1) NOT NULL,
	[nombre] [nvarchar](100) NOT NULL,
	[direccion] [nvarchar](200) NULL,
	[telefono] [nvarchar](20) NULL,
 CONSTRAINT [PK_clientes_cliente_id] PRIMARY KEY CLUSTERED 
(
	[cliente_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [supermercado].[detalle_facturas]    Script Date: 22/05/2024 12:03:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [supermercado].[detalle_facturas](
	[detalle_id] [int] IDENTITY(91,1) NOT NULL,
	[factura_id] [int] NULL,
	[producto_id] [int] NULL,
	[cantidad] [int] NOT NULL,
	[precio] [decimal](10, 3) NOT NULL,
	[ssma$rowid] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_detalle_facturas_detalle_id] PRIMARY KEY CLUSTERED 
(
	[detalle_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_detalle_facturas_ssma$rowid] UNIQUE NONCLUSTERED 
(
	[ssma$rowid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [supermercado].[empresa]    Script Date: 22/05/2024 12:03:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [supermercado].[empresa](
	[empresa_id] [int] NOT NULL,
	[nombre] [nvarchar](100) NOT NULL,
	[direccion] [nvarchar](200) NULL,
	[telefono] [nvarchar](20) NULL,
 CONSTRAINT [PK_empresa_empresa_id] PRIMARY KEY CLUSTERED 
(
	[empresa_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [supermercado].[facturas]    Script Date: 22/05/2024 12:03:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [supermercado].[facturas](
	[factura_id] [int] IDENTITY(36,1) NOT NULL,
	[cliente_id] [int] NULL,
	[cajero_id] [int] NULL,
	[empresa_id] [int] NULL,
	[medio_pago_id] [int] NULL,
	[fecha] [date] NULL,
	[subtotal] [decimal](10, 3) NULL,
	[descuento] [decimal](10, 2) NULL,
	[iva] [decimal](10, 2) NULL,
	[total] [decimal](10, 3) NULL,
 CONSTRAINT [PK_facturas_factura_id] PRIMARY KEY CLUSTERED 
(
	[factura_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [supermercado].[medios_pago]    Script Date: 22/05/2024 12:03:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [supermercado].[medios_pago](
	[medio_pago_id] [int] IDENTITY(4,1) NOT NULL,
	[descripcion] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_medios_pago_medio_pago_id] PRIMARY KEY CLUSTERED 
(
	[medio_pago_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [supermercado].[productos]    Script Date: 22/05/2024 12:03:13 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [supermercado].[productos](
	[producto_id] [int] IDENTITY(21,1) NOT NULL,
	[nombre] [nvarchar](100) NOT NULL,
	[precio] [decimal](10, 2) NOT NULL,
	[categoria_id] [int] NULL,
 CONSTRAINT [PK_productos_producto_id] PRIMARY KEY CLUSTERED 
(
	[producto_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [supermercado].[clientes] ADD  DEFAULT (NULL) FOR [direccion]
GO
ALTER TABLE [supermercado].[clientes] ADD  DEFAULT (NULL) FOR [telefono]
GO
ALTER TABLE [supermercado].[detalle_facturas] ADD  DEFAULT (NULL) FOR [factura_id]
GO
ALTER TABLE [supermercado].[detalle_facturas] ADD  DEFAULT (NULL) FOR [producto_id]
GO
ALTER TABLE [supermercado].[detalle_facturas] ADD  DEFAULT (newid()) FOR [ssma$rowid]
GO
ALTER TABLE [supermercado].[empresa] ADD  DEFAULT (NULL) FOR [direccion]
GO
ALTER TABLE [supermercado].[empresa] ADD  DEFAULT (NULL) FOR [telefono]
GO
ALTER TABLE [supermercado].[facturas] ADD  DEFAULT (NULL) FOR [cliente_id]
GO
ALTER TABLE [supermercado].[facturas] ADD  DEFAULT (NULL) FOR [cajero_id]
GO
ALTER TABLE [supermercado].[facturas] ADD  DEFAULT (NULL) FOR [empresa_id]
GO
ALTER TABLE [supermercado].[facturas] ADD  DEFAULT (NULL) FOR [medio_pago_id]
GO
ALTER TABLE [supermercado].[facturas] ADD  DEFAULT (NULL) FOR [fecha]
GO
ALTER TABLE [supermercado].[facturas] ADD  DEFAULT (NULL) FOR [subtotal]
GO
ALTER TABLE [supermercado].[facturas] ADD  DEFAULT ((0.00)) FOR [descuento]
GO
ALTER TABLE [supermercado].[facturas] ADD  DEFAULT ((0.19)) FOR [iva]
GO
ALTER TABLE [supermercado].[facturas] ADD  DEFAULT ((0.000)) FOR [total]
GO
ALTER TABLE [supermercado].[productos] ADD  DEFAULT (NULL) FOR [categoria_id]
GO
ALTER TABLE [supermercado].[detalle_facturas]  WITH NOCHECK ADD  CONSTRAINT [detalle_facturas$detalle_facturas_ibfk_1] FOREIGN KEY([factura_id])
REFERENCES [supermercado].[facturas] ([factura_id])
GO
ALTER TABLE [supermercado].[detalle_facturas] CHECK CONSTRAINT [detalle_facturas$detalle_facturas_ibfk_1]
GO
ALTER TABLE [supermercado].[detalle_facturas]  WITH NOCHECK ADD  CONSTRAINT [detalle_facturas$detalle_facturas_ibfk_2] FOREIGN KEY([producto_id])
REFERENCES [supermercado].[productos] ([producto_id])
GO
ALTER TABLE [supermercado].[detalle_facturas] CHECK CONSTRAINT [detalle_facturas$detalle_facturas_ibfk_2]
GO
ALTER TABLE [supermercado].[facturas]  WITH NOCHECK ADD  CONSTRAINT [facturas$facturas_ibfk_1] FOREIGN KEY([cliente_id])
REFERENCES [supermercado].[clientes] ([cliente_id])
GO
ALTER TABLE [supermercado].[facturas] CHECK CONSTRAINT [facturas$facturas_ibfk_1]
GO
ALTER TABLE [supermercado].[facturas]  WITH NOCHECK ADD  CONSTRAINT [facturas$facturas_ibfk_2] FOREIGN KEY([cajero_id])
REFERENCES [supermercado].[cajeros] ([cajero_id])
GO
ALTER TABLE [supermercado].[facturas] CHECK CONSTRAINT [facturas$facturas_ibfk_2]
GO
ALTER TABLE [supermercado].[facturas]  WITH NOCHECK ADD  CONSTRAINT [facturas$facturas_ibfk_3] FOREIGN KEY([empresa_id])
REFERENCES [supermercado].[empresa] ([empresa_id])
GO
ALTER TABLE [supermercado].[facturas] CHECK CONSTRAINT [facturas$facturas_ibfk_3]
GO
ALTER TABLE [supermercado].[facturas]  WITH NOCHECK ADD  CONSTRAINT [facturas$facturas_ibfk_4] FOREIGN KEY([medio_pago_id])
REFERENCES [supermercado].[medios_pago] ([medio_pago_id])
GO
ALTER TABLE [supermercado].[facturas] CHECK CONSTRAINT [facturas$facturas_ibfk_4]
GO
ALTER TABLE [supermercado].[productos]  WITH NOCHECK ADD  CONSTRAINT [productos$productos_ibfk_1] FOREIGN KEY([categoria_id])
REFERENCES [supermercado].[categorias_productos] ([categoria_id])
GO
ALTER TABLE [supermercado].[productos] CHECK CONSTRAINT [productos$productos_ibfk_1]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'supermercado.cajeros' , @level0type=N'SCHEMA',@level0name=N'supermercado', @level1type=N'TABLE',@level1name=N'cajeros'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'supermercado.categorias_productos' , @level0type=N'SCHEMA',@level0name=N'supermercado', @level1type=N'TABLE',@level1name=N'categorias_productos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'supermercado.clientes' , @level0type=N'SCHEMA',@level0name=N'supermercado', @level1type=N'TABLE',@level1name=N'clientes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'supermercado.detalle_facturas' , @level0type=N'SCHEMA',@level0name=N'supermercado', @level1type=N'TABLE',@level1name=N'detalle_facturas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'supermercado.empresa' , @level0type=N'SCHEMA',@level0name=N'supermercado', @level1type=N'TABLE',@level1name=N'empresa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'supermercado.facturas' , @level0type=N'SCHEMA',@level0name=N'supermercado', @level1type=N'TABLE',@level1name=N'facturas'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'supermercado.medios_pago' , @level0type=N'SCHEMA',@level0name=N'supermercado', @level1type=N'TABLE',@level1name=N'medios_pago'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_SSMA_SOURCE', @value=N'supermercado.productos' , @level0type=N'SCHEMA',@level0name=N'supermercado', @level1type=N'TABLE',@level1name=N'productos'
GO
