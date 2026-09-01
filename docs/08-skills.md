# 08 — Skills

Skills are reusable procedures.

The configured creation nudge interval is:

```yaml
skills:
  creation_nudge_interval: 15
```

## Skill lifecycle

```mermaid
flowchart TB
    TASK["Complex Task"]
    SOLVE["Agent Solves Task"]
    PROCEDURE["Reusable Procedure"]
    SKILL["Skill"]
    REUSE["Future Task"]

    TASK --> SOLVE
    SOLVE --> PROCEDURE
    PROCEDURE --> SKILL
    SKILL --> REUSE
```

See `examples/04-custom-skill/`.
