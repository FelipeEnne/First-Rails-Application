# First Rails Application

Aplicação Rails de exemplo com CRUD de carros (`make`, `model`, `year`).

Stack atualizada para versões com suporte ativo, eliminando vulnerabilidades conhecidas nas dependências anteriores (Ruby 2.6 / Rails 5.2 e gems associadas).

## Requisitos

- Ruby **3.3.11** (veja [`.ruby-version`](.ruby-version))
- Bundler 2.x
- SQLite 3 (desenvolvimento e testes)
- PostgreSQL (produção)

## Setup

```bash
bundle install
bin/rails db:setup
bin/rails server
```

A aplicação fica disponível em [http://localhost:3000](http://localhost:3000).

Atalho equivalente:

```bash
bin/setup
bin/rails server
```

## Testes

```bash
bin/rails test
```

## Segurança das dependências

As gems são auditadas com [bundler-audit](https://github.com/rubysec/bundler-audit):

```bash
bin/bundler-audit
```

O comando deve reportar `No vulnerabilities found`.

## Produção / deploy

- Banco: PostgreSQL via `DATABASE_URL` (gem `pg`)
- Credenciais: defina `RAILS_MASTER_KEY` (conteúdo de `config/master.key`, que não vai para o repositório) ou `SECRET_KEY_BASE`
- Arquivos estáticos em hosts como Heroku: `RAILS_SERVE_STATIC_FILES=true` e `RAILS_LOG_TO_STDOUT=true` quando necessário

Exemplo mínimo de variáveis:

```bash
DATABASE_URL=postgres://user:pass@host/dbname
RAILS_MASTER_KEY=sua_master_key
RAILS_ENV=production
```

## Estrutura principal

| Recurso | Caminho |
|---------|---------|
| Model | `app/models/car.rb` |
| Controller | `app/controllers/cars_controller.rb` |
| Views | `app/views/cars/` |
| Rotas | `root` → `cars#index`, `resources :cars` |
