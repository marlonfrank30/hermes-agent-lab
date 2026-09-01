# 10 — Delegation / Sub-Agents

Delegation is enabled with:

```yaml
delegation:
  max_iterations: 250
```

Use sub-agents when a task can be decomposed into independent research or processing jobs.

```mermaid
flowchart TB
    MAIN["Main Agent"]
    A["Research"]
    B["Compare"]
    C["Validate"]
    D["Summarize"]
    FINAL["Final Answer"]

    MAIN --> A
    MAIN --> B
    MAIN --> C
    MAIN --> D

    A --> FINAL
    B --> FINAL
    C --> FINAL
    D --> FINAL
    FINAL --> MAIN
```

See `examples/06-sub-agent-research/`.
