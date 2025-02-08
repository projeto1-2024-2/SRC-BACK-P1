## SRC-BACK-P1

### Instruções de uso

- Copie e cole o arquivo .env.example e renomeie ele apenas para .env
- Em seguida, solicite as chaves de acesso
- Após ter acesso as chaves, execute o docker-compose, com o comando `docker compose up --build`
- Após o container subir, execute o prisma com `npx prisma generate` em seguida, execute o `npx prisma migrate dev`