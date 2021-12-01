create database Biblioteca;

use Biblioteca;

    create table livros (
    idlivro int primary key not null auto_increment,
    titulolivro varchar (255),
    tipo varchar (255),
    idioma varchar (255),
    dataaquisicao varchar(11),
    quantidade int,
    autor varchar (255),
    editora varchar (50),
    generoliterario varchar (50),
    volume smallint
    );
select * from leitores;

insert into livros (titulolivro,tipo,idioma,dataaquisicao,quantidade,autor,editora,generoliterario,volume) values 
						("Guia do Mochileiro das Galáxias","Livro","Português","25/10/2021",3,"Douglas Adams","Arco","Ficção científica",1);
    
insert into leitores (nomeLeitor,cpf) values ('Erik','111'); 
    
select * from livros;
  create table leitores (
    idleitor int primary key not null auto_increment ,
    nomeLeitor varchar (255) ,
    cpf varchar (15) ,
    nascimento varchar(255) ,
    sexo char (1) ,
    escolaridade varchar (50) ,
    endereço varchar (50),
    bairro varchar (50),
    cidade varchar (255),
    estado char (2),
    cep int,
    referencia varchar (50),
    contato int(20) 
    );
    
drop table emprestimo;
select * from emprestimo;
    create table emprestimo (
	idemprestimo int not null auto_increment primary key,
    dataemprestimo varchar(10),
    datadevolucao varchar(10) ,
    estatusdevolucao varchar(30),
    volumelivro int,
    idlivro int,
    idleitor int,
    nomeleitor varchar (255),
    titulolivro varchar (255),
    cpf varchar(14)
    );
select * from emprestimo;

ALTER TABLE emprestimo ADD CONSTRAINT fk_livro FOREIGN KEY ( idlivro ) REFERENCES livros ( idlivro ) ;
ALTER TABLE emprestimo ADD CONSTRAINT fk_leitor FOREIGN KEY ( idleitor ) REFERENCES leitores ( idleitor ) ;
ALTER TABLE emprestimo ADD CONSTRAINT fk_cpf FOREIGN KEY ( cpf ) REFERENCES leitores ( cpf ) ;

create table multas (
diasvencidos int,
valormulta double,
idleitor int,
idlivro int
);

ALTER TABLE multas ADD CONSTRAINT fk_livro FOREIGN KEY ( idlivro ) REFERENCES livros ( idlivro ) ;
ALTER TABLE multas ADD CONSTRAINT fk_leitor FOREIGN KEY ( idleitor ) REFERENCES leitores ( idleitor );