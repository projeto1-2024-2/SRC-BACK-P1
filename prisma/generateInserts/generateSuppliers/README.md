# Gerador de Dados para Fornecedores e Produtos

## Descrição

Este script em Python gera dados fictícios para popular as tabelas **User**, **Address**, **Location**, **Establishment**, **Supplier**, **Product** e **ProductDimension** no banco de dados. Ele utiliza a biblioteca `Faker` para gerar informações realistas e baixa um dataset do Kaggle contendo produtos da Amazon Brasil para preencher os dados dos produtos.

## Funcionalidades

- Gera dados para usuários, incluindo nome, email e telefone.
- Cria registros de endereço e localização.
- Gera estabelecimentos comerciais vinculados a fornecedores.
- Associa fornecedores a estabelecimentos comerciais.
- Gera produtos com base no dataset do Kaggle.
- Salva os comandos `INSERT INTO` em um arquivo SQL para execução no banco de dados.

## Requisitos

Para executar o script, é necessário ter o Python instalado e as seguintes dependências:

```bash
pip install pandas kagglehub faker
```

## Como Usar

1. Defina a quantidade de fornecedores e produtos a serem gerados, substituindo os valores das variáveis:

   ```python
   quantidade_suppliers = 100  # Quantidade de fornecedores
   quantidade_minima_produtos_supplier = 50  # Quantidade mínima de produtos por fornecedor
   quantidade_maxima_produtos_supplier = 100  # Quantidade máxima de produtos por fornecedor
   ```

2. Execute o script:

   ```bash
   python3 2.generate-supplier.py
   ```

3. O arquivo `2.supplier-inserts.sql` será gerado no diretório atual, contendo os comandos SQL necessários.

## Estrutura dos Dados Gerados

O script gera os seguintes comandos `INSERT INTO`:

1. **Tabela Address**:

   - `id`, `street`, `number`, `complement`, `neighbourhood`, `zipCode`, `city`, `state`

2. **Tabela Location**:

   - `addressId`, `x`, `y`, `z`

3. **Tabela User**:

   - `id`, `name`, `email`, `password_hash`, `phoneNumber`, `image`, `created_at`, `updated_at`, `pseudonym`, `addressId`

4. **Tabela Establishment**:

   - `id`, `name`, `operatingHours`, `commercialPhone`, `taxId`, `addressId`

5. **Tabela Supplier**:

   - `id`, `userId`, `taxId`, `createdAt`, `establishmentId`

6. **Tabela Product**:

   - `id`, `title`, `description`, `brand`, `isAvaliable`, `quantity`, `price`, `establishmentId`, `category`, `status`

7. **Tabela ProductDimension**:
   - `productId`, `length`, `height`, `width`

## Exemplo de Saída SQL

```sql
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('123e4567-e89b-12d3-a456-426614174000', 'Rua Exemplo, 123', 456, 'Apto 10', 'Bairro XYZ', '12345-678', 'Cidade ABC', 'Estado DEF');

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('987e6543-b21a-34c5-d678-123456789000', 'João Silva', 'joao.silva@example.com', 'senhaSegura123', '(11) 99999-8888', NULL, NOW(), NOW(), 'Joã', '123e4567-e89b-12d3-a456-426614174000');

INSERT INTO "Product" ("id", "title", "description", "brand", "isAvaliable", "quantity", "price", "establishmentId", "category", "status")
VALUES ('321e6543-b21a-34c5-d678-654321789000', 'Smartphone XYZ', 'Smartphone XYZ', 'brand 23', TRUE, 50, 1999.99, '987e6543-b21a-34c5-d678-123456789000', 'Eletrônicos', 'ACTIVE');
-- USER INFO ENDS ------------------------------------------------------
```
