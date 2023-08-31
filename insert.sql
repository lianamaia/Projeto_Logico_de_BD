-- inserindo clientes
insert into cliente (pNome, fNome, cpf, endereco, contato)
	values
	  ('João Silva', '12345678912', '+4833214874', 'joao@example.com'),
    ('Maria Souza', '12345678913', '+4733548747', 'maria@example.com'),
    ('Lucas Pereira', '12345678914', '+4735487484', 'lucas@example.com'),
    ('Ana Santos', '12345678915', '+4634548741', 'ana@example.com');


-- inserindo veiculos 
insert into veiculo (idCliente, vModelo, marca, ano, placa, chassi)
	values
    (1, 'Civic', 'Honda', 2020, 'XYZ-5678', '98765432101'),
    (2, 'Corolla', 'Toyota', 2021, 'DEF-4321', '12345678902'),
    (3, 'Fiesta', 'Ford', 2022, 'GHI-7890', '45678901234'),
    (4, 'Cruze', 'Chevrolet', 2019, 'JKL-1234', '56789012345');

    
-- inserindo equipe/serviço
insert into equipe_servico(especialidade, valor)
	values
    ('concertos', 400),
    ('revisões', 150);
    
-- inserindo mecanico
insert into mecanico (idServico, pNome, fNome, especialidade, endereco)
	values
    (1, 'André Silva', 'Rua das Flores, 123', 'Mecânico', '+4812345678', 'andre@example.com'),
    (2, 'Carla Santos', 'Av. Principal, 456', 'Mecânico de Manutenção', '+4812345679', 'carla@example.com'),
    (3, 'Lucas Pereira', 'Rua das Oficinas, 789', 'Mecânico Montador', '+4898765432', 'lucas@example.com');

    
-- inserindo produtos
insert into produto (nomeProduto, descricao, valor)
	values
    ('Embreagem', 2500),
    ('Sistema de Freio', 1500),
    ('Lâmpadas', 50),
    ('Óleo', 30),
    ('Filtro de Ar', 20),
    ('Correia Dentada', 100),
    ('Amortecedor', 500),
    ('Bateria', 200);
    
-- Inserindo ordens de serviço
INSERT INTO OrdemDeServico (veiculo_id, data_emissao, data_conclusao, status)
VALUES
    (1, NULL, '2023-01-15', 'processando'),
    (2, NULL, '2022-12-30', 'finalizada', '2023-01-02'),
    (3, NULL, '2023-01-04', 'processando', '2023-01-06'),
    (4, NULL, '2023-01-20', 'aguardando');


-- inserindo serviços por os
insert into servicos_os (idOs, idServico)
	values
    (1, 1),
    (2, 2),
    (3, 1),
    (4, 2);
    
-- inserindo produtos por os
insert into produtos_os (idOs, idProduto, quantidade)
	values
    (1, 1, 1),
    (2, 4, 1),
    (3, 2, 2),
    (4, 3, 4),
    (1, 3, 4),
    (2, 3, 4),
    (1, 4, 1);
    
    
-- Inserindo novo cliente
INSERT INTO Cliente (nome, CPF, endereco, telefone)
VALUES
    ('Ana Maria Sonza', '12345678921', 'Jaguari', '+5532552333');

-- Inserindo novo veículo
INSERT INTO Veiculo (cliente_id, modelo, marca, ano, placa, chassi)
VALUES
    (5, 'Camaro', 'Chevrolet', 2019, 'ABD-1234', '123456123451');

-- Inserindo nova ordem de serviço
INSERT INTO OrdemDeServico (veiculo_id, data_emissao, data_entrega, status)
VALUES
    (5, NULL, '2023-01-18', 'processando');

-- Inserindo serviço relacionado à ordem de serviço
INSERT INTO ServicoOrdem (ordem_id, servico_id)
VALUES
    (5, 1);

-- Inserindo produtos relacionados à ordem de serviço
INSERT INTO PecaOrdem (ordem_id, peca_id, quantidade)
VALUES
    (5, 1, 1),
    (5, 2, 2),
    (5, 3, 4),
    (5, 4, 1);