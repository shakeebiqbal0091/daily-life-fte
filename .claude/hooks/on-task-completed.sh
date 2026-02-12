#!/bin/bash

# on-task-completed.sh
# Purpose: Maintain system state and momentum after task completion
# Trigger: Task marked complete (via Notion MCP or internal state update)
# Workflow: Update state and trigger follow-ups

# Log hook execution
echo "$(date): on-task-completed.sh triggered"

# Get task details from environment or stdin
TASK_ID="$1"
if [ -z "$TASK_ID" ]; then
    echo "$(date): No task ID provided"
    exit 1
fi

echo "$(date): Task completed: $TASK_ID"

# Update task state in the system
# This will update the completed-items.json and trigger any follow-up actions
claude run workflow update-task-state --task-id "$TASK_ID"

# Check if workflow succeeded
if [ $? -eq 0 ]; then
    echo "$(date): Task state updated successfully"
else
    echo "$(date): Task state update failed"
    exit 1
fi

exit 0