CREATE DATABASE noteApp;

use noteApp;

-- Criação da tabela `user`
CREATE TABLE user (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(60) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
) ENGINE = INNODB;

-- Criação da tabela `notes`
CREATE TABLE notes (
    id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
    body VARCHAR(255) NOT NULL,
    user_id INT(11) NOT NULL,
    CONSTRAINT fk_user__notes_id FOREIGN KEY (user_id)
        REFERENCES user(id) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE = INNODB;

-- Inserir usuários na tabela `user`
INSERT INTO user (name, email)
VALUES 
    ('Alice', 'alice@example.com'),
    ('Bob', 'bob@example.com');

-- Inserir notas para os usuários na tabela `notes`
INSERT INTO notes (body, user_id)
VALUES 
    ('Lembrete: Reunião às 10h.', 1),  -- Nota para Alice
    ('Comprar ingredientes para o jantar.', 1),  -- Outra nota para Alice
    ('Finalizar relatório de vendas.', 2),  -- Nota para Bob
    ('Marcar consulta médica.', 2);  -- Outra nota para Bob
