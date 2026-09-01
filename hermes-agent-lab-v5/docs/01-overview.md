# 01 — Overview

This edition follows the reference video's learning path but maps it to a local/custom-provider Hermes installation.

## Video concept

**Place → Brain → Phone → Desktop → Memory → Skills → Schedule → Operations → Sub-agents**

## Local implementation

- Place: `ai-server`
- Brain: GLM-4.7-Flash through an OpenAI-compatible local endpoint
- Messaging: WhatsApp home channel
- Interface: Hermes CLI/dashboard and compatible desktop access where configured
- Memory: enabled
- Skills: enabled
- Schedule: cronjob toolset enabled
- Delegation: enabled
- Operations: gateway watchdogs, delivery ledger, `hermes doctor`

## Important distinction

The video uses a hosted VPS and OpenRouter. This repository does not assume those services. The model path is local/custom.
