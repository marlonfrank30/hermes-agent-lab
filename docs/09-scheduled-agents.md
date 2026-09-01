# 09 — Scheduled Autonomous Agents

Cronjob tooling is enabled.

The goal is to describe an outcome once and have Hermes build a repeatable workflow.

Example:

```text
Monitor AI productivity trends.

Search for new developments on a recurring schedule.
Remember what has already been reported.
Only notify me when something meaningfully new appears.
```

## Flow

```mermaid
flowchart TB
    CRON["Cron"]
    AGENT["Hermes"]
    SEARCH["Web Search"]
    MEMORY["Memory"]
    ANALYZE["Analyze"]
    DECIDE{"New?"}
    NOTIFY["WhatsApp"]
    DONE["Done"]

    CRON --> AGENT
    AGENT --> SEARCH
    AGENT --> MEMORY
    SEARCH --> ANALYZE
    MEMORY --> ANALYZE
    ANALYZE --> DECIDE
    DECIDE -->|Yes| NOTIFY
    DECIDE -->|No| DONE
```

Start with a conservative schedule and observe resource usage before increasing frequency.
