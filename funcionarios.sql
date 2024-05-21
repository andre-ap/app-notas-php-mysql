CREATE TABLE CadastroFuncionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    endereco VARCHAR(255),
    telefone VARCHAR(15),
    email VARCHAR(100)
);

INSERT INTO CadastroFuncionarios (nome, data_nascimento, cpf, endereco, telefone, email)
VALUES 
('João Silva', '1985-03-15', '123.456.789-00', 'Rua das Flores, 123', '(11) 98765-4321', 'joao.silva@email.com'),
('Maria Souza', '1990-07-22', '987.654.321-00', 'Av. das Palmeiras, 456', '(21) 98765-1234', 'maria.souza@email.com'),
('Carlos Pereira', '1978-12-10', '111.222.333-44', 'Rua dos Jacarandás, 78', '(31) 98877-6655', 'carlos.pereira@email.com'),
('Ana Oliveira', '1982-06-05', '222.333.444-55', 'Av. Brasil, 250', '(41) 97766-5544', 'ana.oliveira@email.com'),
('Ricardo Santos', '1995-08-20', '333.444.555-66', 'Rua das Acácias, 456', '(51) 96655-4433', 'ricardo.santos@email.com'),
('Juliana Costa', '1987-04-17', '444.555.666-77', 'Rua das Rosas, 890', '(61) 95544-3322', 'juliana.costa@email.com'),
('Fernando Almeida', '1975-01-23', '555.666.777-88', 'Av. das Nações, 789', '(71) 94433-2211', 'fernando.almeida@email.com'),
('Patrícia Lima', '1989-09-30', '666.777.888-99', 'Rua das Palmeiras, 321', '(81) 93322-1100', 'patricia.lima@email.com'),
('Gabriel Moreira', '1992-11-14', '777.888.999-00', 'Rua dos Pinheiros, 654', '(91) 92211-0099', 'gabriel.moreira@email.com'),
('Isabela Rocha', '1984-07-11', '888.999.000-11', 'Av. Central, 432', '(31) 91100-9988', 'isabela.rocha@email.com'),
('Lucas Martins', '1979-03-19', '999.000.111-22', 'Rua das Orquídeas, 210', '(41) 90099-8877', 'lucas.martins@email.com'),
('Renata Fernandes', '1993-05-24', '000.111.222-33', 'Av. Paulista, 980', '(51) 89988-7766', 'renata.fernandes@email.com'),
('Eduardo Gomes', '1986-10-28', '111.222.333-44', 'Rua do Comércio, 567', '(61) 78877-6655', 'eduardo.gomes@email.com'),
('Mariana Ribeiro', '1991-01-15', '222.333.444-55', 'Rua do Mercado, 123', '(71) 67766-5544', 'mariana.ribeiro@email.com'),
('Rodrigo Araújo', '1983-02-27', '333.444.555-66', 'Av. dos Expedicionários, 345', '(81) 56655-4433', 'rodrigo.araujo@email.com'),
('Camila Menezes', '1977-06-13', '444.555.666-77', 'Rua da Independência, 678', '(91) 45544-3322', 'camila.menezes@email.com'),
('Diego Barros', '1980-12-05', '555.666.777-88', 'Av. dos Imigrantes, 910', '(31) 34433-2211', 'diego.barros@email.com'),
('Bianca Carvalho', '1988-04-22', '666.777.888-99', 'Rua da Liberdade, 789', '(41) 23322-1100', 'bianca.carvalho@email.com'),
('Thiago Teixeira', '1994-08-16', '777.888.999-00', 'Av. dos Bandeirantes, 654', '(51) 12211-0099', 'thiago.teixeira@email.com'),
('Carolina Nunes', '1981-11-07', '888.999.000-11', 'Rua das Mangueiras, 432', '(61) 01100-9988', 'carolina.nunes@email.com');