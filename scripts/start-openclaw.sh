#!/usr/bin/env bash
set -euo pipefail

TOKEN="${OPENCLAW_TOKEN:-changeme}"

# Ensure gateway config is set correctly before starting
openclaw config set gateway.mode local
openclaw config set gateway.auth.mode token
openclaw config set gateway.auth.token "$TOKEN"

exec openclaw gateway --port 10003
