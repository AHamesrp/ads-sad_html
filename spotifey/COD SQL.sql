CREATE TABLE dono_playlist (
	id SERIAL PRIMARY KEY,
	nome VARCHAR (100),
	nome_usuario TEXT,
	nome_ouvinte TEXT
);

INSERT INTO dono_playlist (nome, nome_usuario, nome_ouvinte) VALUES ('playlist de modão', 'usuario arthur', 'ouvinte ramon');
INSERT INTO dono_playlist (nome, nome_usuario, nome_ouvinte) VALUES ('playlist de rock', 'usuario denys', 'ouvinte heitor');
UPDATE dono_playlist SET nome_ouvinte = usuario arthur WHERE(nome = 'playlist modão');
UPDATE dono_playlist SET nome_ouvinte = usuario denys WHERE(nome = 'playlist de rock');

____________________________________________________________________________________________________________________________________________

CREATE TABLE ouvintes (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(100),
	usuario TEXT and INT DEFAULT 0,
	playlists_salvas TEXT
);

INSERT INTO ouvintes (nome, usuario, playlists_salvas) VALUES ('heitorCS', 'heitor', 'playlist de modão');
INSERT INTO ouvintes (nome, usuario, playlists_salvas) VALUES ('dennisGYM', 'dennis', 'playlist de rock');
UPDATE ouvintes SET heitor WHERE (nome = 'playlist de modão');
UPDATE ouvintes SET dennis WHERE (nome = 'playlist de rock');

____________________________________________________________________________________________________________________________________________

CREATE TABLE playlist (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(100),
	musicas_salvas TEXT,
	ouvintes TEXT,
	usuario TEXT,
	avaliacao REAL CHECK (avaliacao >= 0.0 and avaliacao <= 5.0)
);

INSERT INTO playlist (nome, musicas_salvas, ouvintes, usuario, avaliacao) VALUES ('playlist de modão', 'andorinhas', 'heitorCS', 4);
INSERT INTO playlist (nome, musicas_salvas, ouvintes, usuario, avaliacao) VALUES ('playlist de rock', 'the unforgiven', 'dennisGYM', 8);
UPDATE playlist SET heitor WHERE (nome = 'playlist de modão');
UPDATE playlist SET dennis WHERE (nome = 'playlist de rock');

___________________________________________________________________________________________________________________________________________

CREATE TABLE usuario (
	id SERIAL PRIMARY KEY,
	nome TEXT
	email TEXT and VARCHAR(50),
	senha TEXT and INT and VARCHAR (100),
);

INSERT INTO usuario (nome, email, senha) VALUES ('heitorCS', 'heitor@hotmail.com', 'senha12345@');
INSERT INTO usuario (nome, email, senha) VALUES ('dennisGYM', 'dennis@gmail.com', '12345senha@');
UPDATE usuario SET heitor WHERE (email = 'heitor@hotmail.com', senha = 'senha12345@');
UPDATE usuario SET heitor WHERE (email = 'dennis@gmail.com', senha = '12345senha@');

















