Drop database if exists livraria;
Create database livraria;
use livraria;

drop table if exists livro;
#Referente à  criação de livros
create table livros(
	isbn char(17) not null primary key,
    titulo varchar(100) not null,
    editora varchar(50) not null,
    ano_publicacao year not null,
    genero enum('Narrativo','Lirico','Dramático', 'Histórico', 'Outros') not null,
    qtd_estoque int not null
);
Insert into livros values
	('978-85-123-4567-8', 'Banco de dados relacionais', 'Editora Ática', 2023, 'Outros', 4),
    ('978-85-987-6543-2', 'SQL para todos', 'Editora Saraiva', 2022, 'Outros', 5),
    ('978-85-321-6549-8', 'Modelagem de dados', 'Editora Pearson', 2021, 'Outros', 7);
Select * from livros;
Select * from livros where isbn = '978-85-987-6543-2';
select titulo, upper(editora) as maiusculo, concat(qtd_estoque, 'em estoque') as Estoque from livros;   

#Referente à Listagem de autores
Create table autor(
	ID char(10) not null primary key,
    Nome varchar(100) not null,
    Nacionalidade varchar(100) not null
);

Insert into autor values
	('8197555632', 'JRR Tolkien', 'Africa do sul'),
    ('1234567890', 'Paulo Coelho', 'Brasil'),
    ('0987654321', 'Machado de Assis', 'Brasil');

Select Nome, upper(Nacionalidade) as maiusculo, concat(ID) as Autor from autor;
Select Nome from autor where Nacionalidade = 'Brasil';
Select * from autor;