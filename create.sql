-- Criação da tabela cliente_db para armazenar informações sobre os clientes
CREATE TABLE cliente_db (
    num_pedido INT AUTO_INCREMENT PRIMARY KEY,  -- Identificador único para cada cliente, gerado automaticamente
    nome_client VARCHAR(110),                    -- Nome do cliente, até 110 caracteres
    num_telefone VARCHAR(15),                    -- Número de telefone do cliente, armazenado como VARCHAR
    email VARCHAR(245)                           -- Email do cliente, até 245 caracteres
);

-- Criação da tabela produto_db para armazenar informações sobre os produtos
CREATE TABLE produto_db (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,   -- Identificador único para cada produto
    descricao VARCHAR(255),                       -- Descrição do produto
    tamanho DECIMAL(15,2),                       -- Tamanho do produto
    cor VARCHAR(80)                               -- Cor do produto
);

-- Criação da tabela pedido_db para armazenar informações sobre os pedidos
CREATE TABLE pedido_db (
    num_pedido INT AUTO_INCREMENT PRIMARY KEY,    -- Identificador único para cada pedido
    nome_client CHAR(110),                        -- Nome do cliente, armazenado como CHAR
    num_telefone VARCHAR(15),                     -- Número de telefone do cliente
    num_pecas INT,                                -- Número de peças no pedido
    descricao VARCHAR(255),                       -- Descrição do pedido
    data_atual DATE,                             -- Data em que o pedido foi feito
    data_entrega DATE,                           -- Data prevista para entrega do pedido
    total DECIMAL(10, 2),                        -- Total do pedido
    forma_pag VARCHAR(50),                        -- Forma de pagamento
    cliente_id INT,                              -- Referência ao ID do cliente na tabela cliente_db
    FOREIGN KEY (cliente_id) REFERENCES cliente_db(num_pedido)  -- Chave estrangeira para cliente_db
);

-- Criação da tabela estoque_db para armazenar informações sobre o estoque de produtos
CREATE TABLE estoque_db (
    id_produto INT PRIMARY KEY,   -- Referência ao ID do produto
    nome_prod VARCHAR(200),
    qnt_prod INT                    -- Chave primária composta

);

-- Criação da tabela vendas_db para armazenar informações sobre as vendas
CREATE TABLE vendas_db (
    id_vendas INT AUTO_INCREMENT PRIMARY KEY,    -- Identificador único para cada venda                             -- Referência ao ID do cliente
    qnt_vendida INT,-- Quantidade vendida
    cliente_id INT,
    FOREIGN KEY (cliente_id) REFERENCES cliente_db(num_pedido)  -- Chave estrangeira para cliente_db
);