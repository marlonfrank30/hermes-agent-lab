# 13 — Troubleshooting

## First command

```bash
hermes doctor
```

## Model unavailable

```bash
curl http://192.168.0.132:11434/v1/models
```

If that fails, troubleshoot the local model server/network before troubleshooting Hermes.

## Agent not responding

```text
Check logs
   ↓
Check gateway
   ↓
Restart gateway
   ↓
Check model endpoint
   ↓
hermes doctor
```

## Gateway watchdogs

The configuration enables:

- loop watchdog
- startup watchdog
- restart-loop guard
- respawn storm protection
- delivery ledger

These settings are intended to improve reliability of an always-on deployment.
