# Security

This repository is designed to be public.

## Never commit

- API keys
- passwords or password hashes
- dashboard secrets
- messaging platform identifiers
- browser cookies/session state
- private certificates or private keys
- internal-only hostnames if they reveal sensitive infrastructure

The real Hermes configuration used to create this reference contained sensitive dashboard authentication material and private WhatsApp identifiers. Those values are deliberately excluded from V3.

## Network exposure

Prefer:

```text
Internet
   │
   ▼
VPN / Zero Trust / authenticated reverse proxy
   │
   ▼
Hermes Gateway
   │
   ├── local model API
   ├── local terminal
   └── messaging integrations
```

Avoid directly exposing an administrative gateway to the public Internet unless you have explicitly designed and tested the authentication, authorization, TLS, rate limiting, and monitoring controls.

## Local model endpoint

The reference endpoint uses a private RFC1918 address. Keep the inference service bound to the required interface and restrict access with host/network firewall rules.

## Credentials

Use environment variables, a secrets manager, or the platform's credential storage. Do not place production credentials in YAML committed to Git.

## Recovery

If a credential appears in a public repository:

1. Revoke/rotate it immediately.
2. Remove it from the current working tree.
3. Remove it from Git history if appropriate.
4. Review logs and access history.
5. Replace the repository copy with a sanitized example.

## Public-repo checklist

- [ ] `git status` reviewed
- [ ] `.env` ignored
- [ ] no API keys
- [ ] no passwords
- [ ] no messaging IDs
- [ ] no cookies/session data
- [ ] no private certificates
- [ ] no internal-only secrets in screenshots
