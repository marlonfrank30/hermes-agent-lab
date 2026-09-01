# 11 — Cost and Resource Management

The video focuses heavily on hosted model API cost. This local installation changes the cost model.

## Hosted

```text
Agent → API provider → pay per usage
```

## Local

```text
Agent → local API → local model
```

Primary local costs are:

- electricity
- hardware
- storage
- cooling
- maintenance
- opportunity cost of the hardware

External tools may still incur their own costs.

## Operational controls

The configuration includes:

```yaml
agent:
  max_turns: 150

code_execution:
  timeout: 300
  max_tool_calls: 50

gateway:
  api_server:
    max_concurrent_runs: 10
```

These are useful guardrails for long-running agent workloads.
