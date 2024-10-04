-- Inserindo dados na tabela cliente_db
INSERT INTO cliente_db (nome_client, num_telefone, email) VALUES 
('Vitor Arruda', '14997671364', 'varruda170@gmail.com');

-- Inserindo dados na tabela produto_db
INSERT INTO produto_db (descricao, tamanho, cor) VALUES 
('Tecido Preto', 38.00, 'Preto');

-- Inserindo dados na tabela pedido_db
INSERT INTO pedido_db (nome_client, num_telefone, num_pecas, descricao, data_atual, data_entrega, total, forma_pag, cliente_id) VALUES 
('Vitor Arruda', '14997671364', 2, 'Terno', '2024-09-01', '2024-09-10', 250.00, 'Cartão', 1);

-- Inserindo dados na tabela estoque_db
INSERT INTO estoque_db (id_produto, nome_prod, qnt_prod) VALUES 
(1, 'Terno', 5);


-- Inserindo dados na tabela vendas_db
INSERT INTO vendas_db (qnt_vendida, cliente_id) VALUES 
(1, 1);  -- Venda para Vitor Arruda
