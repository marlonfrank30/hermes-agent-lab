#!/usr/bin/env bash
set -euo pipefail

echo "Installing Hermes using the official installer..."
curl -fsSL https://hermes-agent.nousresearch.com/install.sh | bash

echo
echo "Run:"
echo "  hermes setup"
echo "  hermes doctor"
