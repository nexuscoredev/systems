# Migração para `ligeirinhobebidas`

O site da **Ligeirinho Bebidas** está na branch `main`. Para concluir a migração para o repositório novo, escolha uma opção:

## Opção A — Renomear (recomendado)

Como a conta `nexuscoredev` tem apenas o repositório `systems`, o caminho mais simples é **renomear** no GitHub:

1. Abra [Configurações do repositório systems](https://github.com/nexuscoredev/systems/settings)
2. Em **Repository name**, altere de `systems` para `ligeirinhobebidas`
3. Confirme com **Rename**

O histórico, issues e PRs permanecem no mesmo repositório, só muda a URL.

Depois do rename, atualize o clone local (se houver):

```bash
git remote set-url origin https://github.com/nexuscoredev/ligeirinhobebidas.git
git fetch origin
```

## Opção B — Repositório novo separado

1. Crie um repositório vazio: https://github.com/new?name=ligeirinhobebidas&owner=nexuscoredev
2. Conceda ao **Cursor GitHub App** acesso ao repositório novo (Settings → Integrations)
3. Execute na raiz do projeto:

```bash
./scripts/push-to-ligeirinhobebidas.sh
```

## Conteúdo migrado

- Landing (`index.html`), home, produtos, empresa, contato
- Componentes (`components/`, `components.js`)
- `README.md` e assets em `img/`

## GitHub Pages

Após o rename ou push no repo novo: **Settings → Pages → Deploy from branch `main` / root**.
