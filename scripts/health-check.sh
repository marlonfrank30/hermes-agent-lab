#!/usr/bin/env bash
set -euo pipefail

echo "=== Hermes health check ==="

echo "Hermes:"
command -v hermes || true

echo
echo "Local model endpoint:"
curl -fsS --max-time 5 http://192.168.0.132:11434/v1/models || {
  echo "Model endpoint check failed"
  exit 1
}

echo
echo "Hermes doctor:"
hermes doctor
