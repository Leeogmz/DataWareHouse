CREATE TABLE [dbo].[Fato_005]
(
	[Cod_Produto] [nvarchar](50) NOT NULL,
	[Cod_Fabrica] NVARCHAR(50) NOT NULL, 
	[Cod_Dia] [nvarchar](50) NOT NULL,
	[Meta_Custos] [float] NULL,
PRIMARY KEY (
	[Cod_Fabrica],
	[Cod_Produto],
	[Cod_Dia]),
CONSTRAINT [FK_Fato_005_Dim_Produto] FOREIGN KEY ([Cod_Produto]) REFERENCES [Dim_Produto]([Cod_Produto]),
CONSTRAINT [FK_Fato_005_Dim_Fabrica] FOREIGN KEY ([Cod_Fabrica]) REFERENCES [Dim_Fabrica]([Cod_Fabrica]),
CONSTRAINT [FK_Fato_005_Dim_Tempo] FOREIGN KEY([Cod_Dia]) REFERENCES [dbo].[Dim_Tempo] ([Cod_Dia])
)