# 01 — First Conversation

## Objective

Verify that Hermes can reach the configured local model.

### Test

Ask:

```text
Hello. Confirm which model and provider you are currently using.
```

Then verify the endpoint separately:

```bash
curl http://192.168.0.132:11434/v1/models
```

Finally:

```bash
hermes doctor
```
