create database db_livraria;
use db_livraria;

create table tb_livro(
pk_id_livro int primary key not null auto_increment,
nome_livro varchar(100),
genero_livro enum('romance', 'ficcao', 'comedia', 'policial', 'biografia', 'suspense', 'aventura', 'misterio', 'poesia'),
autor_livro varchar(50),
editora_livro varchar(20),
data_publi date,
capa_dura enum('roller', 'mole', 'cartao', 'parana'),
valor_livro decimal(10,2),
rating enum('otimo', 'bom', 'regular', 'ruim', 'pessimo')
);

alter table tb_livro drop column autor_livro, drop column editora_livro;
alter table tb_livro add autor_livro varchar(50);
alter table tb_livro add editora_livro varchar(20);

describe tb_livro;
select * from tb_livro;

insert into tb_livro
(pk_id_livro, nome_livro, genero_livro, autor_livro, editora_livro, data_publi, capa_dura, valor_livro, rating) value
(1, 'Perdida', 'ficcao', 'Carina Rissi', 'Verus Editora', '2013-06-27', 'roller', 47.79, 'regular'),
(2, 'Arafat', 'suspense', 'Giordono Danta', 'Dark Side', '2013-06-27', 'Paraná', 17.16, 'bom'),
(3, 'O físico', 'biografia', 'Osório Matsunada', 'Instituto Cultural', '2013-06-27', 'cartao', 50, 'ruim'),
(4, 'Garota Exemplar', 'suspense', 'Gillian Flynn', 'Instituto Cultural', '2013-06-27', 'roller', 60.23, 'bom'),
(5, 'A musicista', 'misterio', 'Gillian Flynn', 'Instituto Cultural', '2013-06-27', 'roller', 20, 'bom'),
(6, 'Lugares escuros', 'misterio', 'Gillian Flynn', 'Intrinseca', '2013-06-27', 'roller', 49.60, 'bom'),
(7, 'Diálogos Impossiveis', 'comedia', 'Verissimo', 'lero lero', '2013-06-27', 'mole', 10, 'regular'),
(8, 'O Alquimista', 'romance', 'Paulo Coelho', 'Inspirando corações', '1998-05-27', 'cartao', 40, 'bom'),
(9, 'Onze Minutos', 'ficcao', 'Paulo Coelho', 'Schwarcz S.A', '2003-05-27', 'roller', 6, 'bom'),
(10, 'Na Margem do Rio Piedra eu Sentei e Chorei', 'ficcao', 'Paulo Coelho', 'Pergaminho', '1994-05-27', 'roller', 41.32, 'bom'),
(11, 'O Diário de um Mago', 'ficcao', 'Paulo Coelho', 'Paralela', '1987-05-27', 'roller', 23.99, 'bom'),
(12, 'Maktub', 'ficcao', 'Paulo Coelho', 'Gold', '1994-05-27', 'roller', 44.94, 'bom'),
(13, 'Poemas Escolhidos', 'poesia', 'Gregorio de Matos', 'Companhia das Letras', '1970-05-27', 'roller', 30, 'bom'),
(14, 'Quincas Borba', 'Romance', 'Machado de Assis', 'Livraria Garnier', '1891-05-27', 'roller', 30,  'bom'),
(15, 'Claro Enigma', 'Poesia', 'Carlos Drummond de Andrade', 'José Olympio', '1951-05-27', 'roller', 30, 'bom'),
(16, 'Angústia', 'Romance', 'Graciliano Ramos', 'José Olympio', '1936-05-27', 'roller', 30, 'bom'),
(17, 'A Reliquia','Ficcao', 'Eça de Queiros', 'Typographia', '1887-05-27', 'roller', 30, 'bom'),
(18, 'Mayombe', 'Ficcao', 'Pepetela', 'Leya', '1979-05-27', 'roller', 52.77, 'bom');

create table tb_autor(
pk_id_autor int primary key not null auto_increment,
nome_autor varchar(100),
endereco_autor varchar(50),
pais_origem varchar(50)
);

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

create table tb_editora(
pk_id_editora int primary key not null auto_increment,
nome_editora varchar(50),
telefone_editora varchar(50),
endereco_editora varchar(50)
);

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

alter table tb_livro add column fk_id_editora int;
alter table tb_livro add pk_id_autor int not null;
alter table tb_livro add column fk_id_autor int;
alter table tb_livro add constraint fk_id_autor foreign key (fk_id_autor) references tb_autor(pk_id_autor);
alter table tb_livro add constraint fk_id_editora foreign key (fk_id_editora) references tb_editora(pk_id_editora);
describe tb_livro;