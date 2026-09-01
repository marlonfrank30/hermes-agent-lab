#!/usr/bin/env bash
set -euo pipefail

echo "=== Hermes Agent Lab verification ==="

if command -v hermes >/dev/null 2>&1; then
  echo "[OK] hermes: $(command -v hermes)"
else
  echo "[FAIL] hermes command not found"
  exit 1
fi

if command -v curl >/dev/null 2>&1; then
  echo "[OK] curl available"
else
  echo "[WARN] curl not available"
fi

echo
echo "Checking local OpenAI-compatible model endpoint..."
if curl -fsS --max-time 5 http://192.168.0.132:11434/v1/models >/dev/null; then
  echo "[OK] model endpoint reachable"
else
  echo "[WARN] model endpoint unavailable"
fi

echo
echo "Running Hermes diagnostics..."
hermes doctor || true
