#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."

echo "Creating Python virtual environment at ./.venv..."
python3 -m venv .venv

echo "Installing dependencies from tools/requirements.txt..."
./.venv/bin/pip install -r tools/requirements.txt

echo "Installing Playwright browsers..."
./.venv/bin/playwright install chromium

echo "Python environment setup complete."
