CREATE TABLE [dbo].Dim_Marca
(
	[Cod_Marca] NCHAR(50) NOT NULL PRIMARY KEY, 
    [Desc_Marca] NCHAR(200) NULL, 
    [Cod_Categoria] NCHAR(50) NULL, 
    CONSTRAINT [FK_Dim_Marca_Dim_Categoria] FOREIGN KEY ([Cod_Categoria]) REFERENCES [Dim_Categoria]([Cod_Categoria])
)
