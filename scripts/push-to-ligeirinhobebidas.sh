#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/nexuscoredev/ligeirinhobebidas.git"
BRANCH="${1:-main}"

cd "$(dirname "$0")/.."

if ! git rev-parse --verify "$BRANCH" >/dev/null 2>&1; then
  echo "Branch '$BRANCH' não existe."
  exit 1
fi

git remote remove ligeirinhobebidas 2>/dev/null || true
git remote add ligeirinhobebidas "$REPO_URL"

echo "Enviando $BRANCH para $REPO_URL ..."
git push -u ligeirinhobebidas "$BRANCH:main"

echo "OK. Repositório: https://github.com/nexuscoredev/ligeirinhobebidas"
