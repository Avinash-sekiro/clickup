#!/bin/bash

# Start ClickUp MCP in background
npx -y @taazkareem/clickup-mcp-server@latest \
  --env CLICKUP_API_KEY=${CLICKUP_API_KEY} \
  --env CLICKUP_TEAM_ID=${CLICKUP_TEAM_ID} \
  --env ENABLE_SSE=${ENABLE_SSE} \
  --env PORT=${PORT} &

# Start n8n as PID 1
exec n8n
