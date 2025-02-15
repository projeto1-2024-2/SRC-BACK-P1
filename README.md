# **Backend - Busca Inteligente de Fornecedores**

## **Visão Geral**
Este é o backend de um sistema de busca inteligente de fornecedores. O cliente informa o produto que deseja encontrar, e o sistema retorna os fornecedores mais próximos, incluindo **contato e endereço**.

O backend é desenvolvido utilizando:
- **[NestJS](https://nestjs.com/)** para estruturação da API.
- **[GraphQL](https://graphql.org/)** como linguagem de consulta.
- **[Prisma](https://www.prisma.io/)** para interação com o banco de dados.
- **[PostgreSQL](https://www.postgresql.org/)** como banco de dados.

---

## **Configuração do Ambiente**

1. **Configurar variáveis de ambiente**  
   - Copie o arquivo `.env.example` e renomeie para `.env`.  
   - Preencha as chaves de acesso necessárias.

2. **Instalar dependências**  
   ```sh
   npm install
   ```

3. **Rodar o backend em desenvolvimento**  
   ```sh
   npm run start:dev
   ```

4. **Subir os containers com Docker**  
   ```sh
   docker compose up --build
   ```

5. **Gerar e aplicar migrações do banco de dados**  
   ```sh
   npx prisma generate
   npx prisma migrate dev
   ```

---

## **Endpoints**
O backend utiliza **GraphQL** para expor os endpoints.

- A interface do **GraphQL Playground** pode ser acessada via:  
  ```
  http://localhost:3000/graphql
  ```

---

## **Banco de Dados**
- **Banco utilizado:** PostgreSQL  
- **Migrations:** As migrações são gerenciadas com Prisma.  
  - Para rodar as migrações, execute:
    ```sh
    npx prisma generate
    npx prisma migrate dev
    ```

---

## **Autenticação**
O backend utiliza **JWT** para autenticação.

- **Proteção de resolvers**  
  Todos os resolvers privados devem incluir:  
  ```ts
  @UseGuards(JwtAuthGuard)
  ```
  _(exemplo: `user.resolver.ts`)_

- **Rotas públicas**  
  Para criar uma query que **não exige autenticação**, utilize:  
  ```ts
  @IsPublicRoute()
  ```
  _(exemplo: `auth.resolver.ts`)_

---

Se precisar de mais informações, entre em contato com a equipe de desenvolvimento. 🚀

