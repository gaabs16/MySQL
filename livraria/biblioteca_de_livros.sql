create database db_livraria;
use db_livraria;

create table tb_livro(
pk_id_livro int primary key not null auto_increment,
nome_livro varchar(100),
genero_livro enum('romance', 'ficcao', 'comedia', 'policial', 'biografia', 'suspense', 'aventura', 'misterio', 'poesia'),
data_publi date,
capa_dura enum('roller', 'mole', 'cartao', 'parana'),
valor_livro decimal(10,2),
rating enum('otimo', 'bom', 'regular', 'ruim', 'pessimo')
);

create table tb_editora(
pk_id_editora int primary key not null auto_increment,
nome_editora varchar(50),
telefone_editora varchar(50),
endereco_editora varchar(50)
);

create table tb_autor(
pk_id_autor int primary key not null auto_increment,
nome_autor varchar(100),
endereco_autor varchar(50),
pais_origem varchar(50)
);

/ADD COLUNA/
alter table tb_livro add column fk_id_editora int;
alter table tb_livro add column fk_id_autor int;

/ADD CHAVE PRIMARIA/
alter table tb_livro add constraint fk_id_autor foreign key (fk_id_autor) references tb_autor(pk_id_autor);
alter table tb_livro add constraint fk_id_editora foreign key (fk_id_editora) references tb_editora(pk_id_editora);

describe tb_livro;
select * from tb_livro;

insert into tb_livro
(nome_livro, genero_livro, data_publi, capa_dura, valor_livro, rating) value
('Perdida', 'ficcao', '2013-06-27', 'roller', 47.79, 'regular'),
('Arafat', 'suspense','2013-06-27', 'Paraná', 17.16, 'bom'),
('O físico', 'biografia', '2013-06-27', 'cartao', 50, 'ruim'),
('Garota Exemplar', 'suspense', '2013-06-27', 'roller', 60.23, 'bom'),
('A musicista', 'misterio','2013-06-27', 'roller', 20, 'bom'),
('Lugares escuros', 'misterio', '2013-06-27', 'roller', 49.60, 'bom'),
('Diálogos Impossiveis', 'comedia', '2013-06-27', 'mole', 10, 'regular'),
('O Alquimista', 'romance','1998-05-27', 'cartao', 40, 'bom'),
('Onze Minutos', 'ficcao', '2003-05-27', 'roller', 6, 'bom'),
('Na Margem do Rio Piedra eu Sentei e Chorei', 'ficcao', '1994-05-27', 'roller', 41.32, 'bom'),
('O Diário de um Mago', 'ficcao',  '1987-05-27', 'roller', 23.99, 'bom'),
('Maktub', 'ficcao', '1994-05-27', 'roller', 44.94, 'bom'),
('Poemas Escolhidos', 'poesia', '1970-05-27', 'roller', 30, 'bom'),
('Quincas Borba', 'Romance',  '1891-05-27', 'roller', 30,  'bom'),
('Claro Enigma', 'Poesia',  '1951-05-27', 'roller', 30, 'bom'),
('Angústia', 'Romance',  '1936-05-27', 'roller', 30, 'bom'),
('A Reliquia','Ficcao',  '1887-05-27', 'roller', 30, 'bom'),
('Mayombe', 'Ficcao', '1979-05-27', 'roller', 52.77, 'bom');

describe tb_autor;
select * from tb_autor;

insert into tb_autor
(nome_autor, endereco_autor, pais_origem) value
('Carina Rissi', 'sao paulo', 'brasil'),
('Giordono Danta', 'pernambuco', 'brasil'),
('Osório Matsunada', 'rio de janeiro', 'brasil'),
('Gillian Flynn', 'santa catarina', 'brasil'),
('Verissimo', 'minas gerais', 'brasil'),
('Paulo Coelho', 'roraima', 'brasil'),
('Gregorio de Matos', 'sao paulo', 'brasil'),
('Machado de Assis','amazonas', 'brasil'),
('Carlos Drummond de Andrade', 'parana', 'brasil'),
('Graciliano Ramos', 'rio grande do sul', 'brasil'),
('Eça de Queiros', 'bahia', 'brasil'),
('Pepetela', 'sao paulo', 'brasil');


describe tb_editora;
select * from tb_editora;

insert into tb_editora
(nome_editora, telefone_editora, endereco_editora) value
('verus editora', '(11)9111-111', 'rua lapa tito, 54'),
('Dark Side', '(11)9111-111', 'rua lapa tito, 54'),
('Instituto Cultural', '(11)9111-111', 'rua lapa tito, 54'),
('Intrinseca', '(11)9111-111', 'rua lapa tito, 54'),
('lero lero', '(11)9111-111', 'rua lapa tito, 54'),
('Inspirando corações', '(11)9111-111', 'rua lapa tito, 54'),
('Schwarcz S.A', '(11)9111-111', 'rua lapa tito, 54'),
('Pergaminho', '(11)9111-111', 'rua lapa tito, 54'),
('Paralela', '(11)9111-111', 'rua lapa tito, 54'),
('Gold', '(11)9111-111', 'rua lapa tito, 54'),
('Companhia das Letras', '(11)9111-111', 'rua lapa tito, 54'),
('Livraria Garnier', '(11)9111-111', 'rua lapa tito, 54'),
('Jose Olympio', '(11)9111-111', 'rua lapa tito, 54'),
('Typographia', '(11)9111-111', 'rua lapa tito, 54'),
('Leya', '(11)9111-111', 'rua lapa tito, 54');


describe tb_livro;
select * from tb_livro;