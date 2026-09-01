# Installation

Hermes Agent's official installer is the recommended installation path.

## Linux / macOS / WSL2

```bash
curl -fsSL https://hermes-agent.nousresearch.com/install.sh | bash
source ~/.bashrc
hermes
```

## Windows PowerShell

```powershell
iex (irm https://hermes-agent.nousresearch.com/install.ps1)
```

## Validate

```bash
hermes doctor
hermes model
hermes tools
hermes gateway setup
```

The official installer manages the main runtime dependencies and creates the Hermes installation/data layout. Consult the official documentation for platform-specific requirements.

## Local-model deployment

After installation, configure a custom OpenAI-compatible provider pointing to your model server.

Example:

```yaml
model:
  default: glm-4.7-flash:latest
  provider: custom
  base_url: http://192.168.0.132:11434/v1
```

Do not copy private credentials or identifiers from a live configuration into Git.
