-- Recuperação de informações sobre os veículos de um cliente específico:
SELECT c.nome AS Cliente, v.modelo AS Modelo, v.marca AS Marca, v.ano AS Ano
FROM Cliente c
JOIN Veiculo v ON c.cliente_id = v.cliente_id
WHERE c.nome = 'João Silva';

-- Listagem dos serviços realizados em uma ordem de serviço específica:
SELECT os.ordem_id AS OrdemDeServico, s.descricao AS ServicoRealizado, s.preco AS Preco
FROM OrdemDeServico os
JOIN ServicoOrdem so ON os.ordem_id = so.ordem_id
JOIN Servico s ON so.idServico = s.servico_id
WHERE os.ordem_id = 1;

-- Cálculo do valor total gasto por um cliente em serviços e produtos:
SELECT c.nome AS Cliente, 
       SUM(s.preco + (po.quantidade * p.valor)) AS ValorTotalGasto
FROM Cliente c
LEFT JOIN Veiculo v ON c.cliente_id = v.cliente_id
LEFT JOIN OrdemDeServico os ON v.veiculo_id = os.veiculo_id
LEFT JOIN ServicoOrdem so ON os.ordem_id = so.ordem_id
LEFT JOIN Servico s ON so.idServico = s.servico_id
LEFT JOIN ProdutosOrdem po ON os.ordem_id = po.ordem_id
LEFT JOIN Produto p ON po.idProduto = p.produto_id
GROUP BY c.nome;