CREATE DATABASE ConectaCafe;
go

use ConectaCafe;
go

CREATE TABLE Categoria
(
	Id		int not null identity,
	Nome	varchar(30) not null,
	constraint PK_Categoria primary key (id)
);

CREATE TABLE Produto
(
	Id				int not null identity,
	Nome			varchar(60) not null,
	Descricao		varchar(200),
	Preco			decimal(8,2) not null,
	Foto			varchar(200),
	CategoriaId		int not null,

	constraint PK_Produto primary key (id),
	CONSTRAINT FK_Produto_Categoria foreign key(CategoriaId) references Categoria(id)
);

CREATE TABLE Avaliacao
(
	Id				int not null identity,
	Pessoa			varchar(60) not null,
	Texto			varchar(500) not null,
	Nota			decimal(1,0) not null,
	DataAvaliacao	date,
	Foto			varchar(200),
	
	Constraint PK_Avaliacao primary key(Id)
);

CREATE TABLE Blog
(
	Id				int not null identity,
	Titulo			varchar(100) not null,
	Texto			varchar(500) not null,
	Foto			varchar(200),
	DataBlog		datetime,
	
	Constraint PK_Blog primary key(Id)

)

CREATE TABLE Tag
(
	Id		int not null identity,
	Nome	varchar(30) not null,
	constraint PK_Tag primary key (id)
);


CREATE TABLE BlogTag
(
	BlogId			int not null,
	TagId			int not null,
	constraint		PK_BlogTag primary key (Blogid, TagId),
	constraint		FK_BlogTag_Blog 
		foreign key (BlogId) references Blog(Id),

	constraint	FK_BlogTag_Tag 
		foreign key (TagId) references Tag(Id)
);

CREATE TABLE Configuracao
(
	Id			int not null identity,
	Horario		varchar(200),
	Telefone	varchar(20),
	constraint PK_Configuracao primary key (id)

)