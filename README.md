# Projeto DevOps

Aplicacao web estatica servida por uma imagem propria (Dockerfile) + MySQL + phpMyAdmin, orquestrados com Docker Compose e validados por CI (GitHub Actions).

## Estrutura
```
app/index.html   Dockerfile   .dockerignore   compose.yaml   .github/workflows/ci.yml
```

## Reconstruir e executar
```bash
docker compose config
docker compose up -d --build
docker compose ps
```
- Aplicacao: http://localhost:8080
- phpMyAdmin: http://localhost:8081 (servidor `mysql`, usuario `root`, senha `123456` - apenas didatica)

## Encerrar
```bash
docker compose down
```

## CI
A cada `push` na branch `main`, o workflow executa `docker build` para validar a construcao da imagem.
