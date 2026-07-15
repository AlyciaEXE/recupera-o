-- Arquivo de apoio, caso você queira criar tabelas como as aqui criadas para a API funcionar.
-- Você precisa executar os comandos no banco de dados para criar as tabelas,
-- ter este arquivo aqui não significa que a tabela em seu BD estará como abaixo!

CREATE DATABASE livrariaRecuperacao20262;

USE livrariaRecuperacao20262;

CREATE TABLE autor (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50)
);

CREATE TABLE genero (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50)
);

CREATE TABLE livro (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(50),
    fkAutor INT,
    fkGenero INT,
    precoCompra DOUBLE,
    precoVenda DOUBLE,
    CONSTRAINT fk_livro_autor FOREIGN KEY (fkAutor) REFERENCES autor(id),
    CONSTRAINT fk_livro_genero FOREIGN KEY (fkGenero) REFERENCES genero(id)
);

|||||||||||||||||||||||||||||||||||||||||||||||||||||||||
CREATE DATABASE livraria;
USE livraria;

CREATE TABLE Autor (
idAutor INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(50));

CREATE TABLE Genero(
idGenero INT PRIMARY KEY AUTO_INCREMENT,
tipo VARCHAR(60));

CREATE TABLE Livro (
idLivro INT PRIMARY KEY AUTO_INCREMENT,
fkAutor INT,
Titulo VARCHAR(100),
fkGenero INT,
Descrição VARCHAR(150),
CONSTRAINT fk_Genero FOREIGN KEY (fkGenero) REFERENCES Genero(idGenero),
CONSTRAINT fk_Autor FOREIGN KEY (fkAutor) REFERENCES Autor(idAutor));

CREATE TABLE Preco (
idPreco INT PRIMARY KEY AUTO_INCREMENT,
Compra DECIMAL(5,2),
Venda DECIMAL(5,2),
fkLivro INT,
CONSTRAINT fk_Livro FOREIGN KEY (fkLivro) REFERENCES Livro(idLivro));
