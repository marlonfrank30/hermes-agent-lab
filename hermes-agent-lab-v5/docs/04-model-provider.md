# 04 — Model Provider

The reference video uses OpenRouter. This installation uses a custom OpenAI-compatible provider.

## Configuration

```yaml
model:
  default: glm-4.7-flash:latest
  provider: custom
  base_url: http://192.168.0.132:11434/v1
```

The custom provider is discovered as:

```yaml
custom_providers:
  - name: 192.168.0.132:11434
    base_url: http://192.168.0.132:11434/v1
    model: glm-4.7-flash:latest
```

## Test

```bash
curl http://192.168.0.132:11434/v1/models
```

Then:

```bash
hermes doctor
```

## Why this differs from the video

The video's model strategy depends on a hosted API. This setup keeps inference on the local model server, which changes the cost, latency, privacy, and operational model.
