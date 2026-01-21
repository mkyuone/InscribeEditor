#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

node "$ROOT_DIR/scripts/build-version.mjs"
npm exec --yes --package typescript@5.4.5 tsc -- --project "$ROOT_DIR/tsconfig.json"
