# Configuration

`config/config.example.yaml` is a sanitized representation of the supplied production configuration.

The following production-sensitive values were deliberately removed/redacted:

- dashboard password hash
- dashboard secret
- WhatsApp chat ID
- WhatsApp user ID

The repository should never contain the live `~/.hermes/config.yaml`.

If any real dashboard credentials or secrets have been exposed publicly, rotate them.
