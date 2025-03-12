# Gerador de Dados de Usuários para Banco de Dados

## Descrição

Este script em Python gera dados fictícios relacionados aos usuários padrão da aplicação, populando as tabelas **User**, **Address** e **Location** no banco de dados. Ele utiliza a biblioteca `Faker` para gerar nomes, endereços, telefones e outras informações realistas em português do Brasil.

## Funcionalidades

- Gera um conjunto de dados para usuários, incluindo nome, email, telefone e pseudônimo.
- Cria registros de endereços vinculados aos usuários.
- Gera coordenadas aleatórias para a tabela de localização.
- Salva os comandos `INSERT INTO` em um arquivo SQL para posterior execução no banco de dados.

## Requisitos

Para executar o script, é necessário ter o Python instalado e as seguintes dependências:

```bash
pip install faker
```

## Como Usar

1. Defina a quantidade de usuários a serem gerados, substituindo o valor da variável `quantidade_users` por um inteiro. Exemplo:

   ```python
   quantidade_users = 100  # Define a quantidade de usuários a serem criados
   ```

2. Execute o script com o seguinte comando:

   ```bash
   python3 1.generate-users.py
   ```

3. O arquivo `1.user-inserts.sql` será gerado no diretório atual, contendo os comandos SQL necessários para popular as tabelas no banco de dados.

## Estrutura dos Dados Gerados

O script gera os seguintes comandos `INSERT INTO`:

1. **Tabela Address**:

   - `id` (UUID)
   - `street` (logradouro)
   - `number` (número)
   - `complement` (complemento)
   - `neighbourhood` (bairro)
   - `zipCode` (CEP)
   - `city` (cidade)
   - `state` (estado)

2. **Tabela Location**:

   - `addressId` (UUID, chave estrangeira para Address)
   - `x` (latitude)
   - `y` (longitude)
   - `z` (altura, fixo em 0)

3. **Tabela User**:
   - `id` (UUID)
   - `name` (nome completo)
   - `email` (email gerado aleatoriamente)
   - `password_hash` (senha gerada pelo Faker)
   - `phoneNumber` (número de telefone)
   - `image` (NULL por padrão)
   - `created_at` (data e hora atual)
   - `updated_at` (data e hora atual)
   - `pseudonym` (apelido gerado a partir do nome)
   - `addressId` (UUID, chave estrangeira para Address)

## Exemplo de Saída SQL

```sql
-- USER INFO STARTS ------------------------------------------------------
INSERT INTO "Address" ("id", "street", "number", "complement", "neighbourhood", "zipCode", "city", "state")
VALUES ('123e4567-e89b-12d3-a456-426614174000', 'Rua Exemplo, 123', 456, 'Apto 10', 'Bairro XYZ', '12345-678', 'Cidade ABC', 'Estado DEF');

INSERT INTO "Location" ("addressId", "x", "y", "z")
VALUES ('123e4567-e89b-12d3-a456-426614174000', -235678900, -467890000, 0);

INSERT INTO "User" ("id", "name", "email", "password_hash", "phoneNumber", "image", "created_at", "updated_at", "pseudonym", "addressId")
VALUES ('987e6543-b21a-34c5-d678-123456789000', 'João Silva', 'joao.silva@example.com', 'senhaSegura123', '(11) 99999-8888', NULL, NOW(), NOW(), 'Joã', '123e4567-e89b-12d3-a456-426614174000');
-- USER INFO ENDS ------------------------------------------------------
```
