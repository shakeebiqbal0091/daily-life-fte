#!/bin/bash

# evening-summary.sh
# Purpose: Close the day and prepare for tomorrow
# Trigger: Daily at 6:00 PM (via cron or scheduler)
# Workflow: evening-wrap-up.md

# Log hook execution
echo "$(date): evening-summary.sh triggered"

# Trigger the evening wrap-up workflow
# This workflow handles task completion, archiving, and tomorrow's preparation
claude run workflow evening-wrap-up

# Check if workflow succeeded
if [ $? -eq 0 ]; then
    echo "$(date): evening-summary.sh completed successfully"
else
    echo "$(date): evening-summary.sh failed"
    exit 1
fi

exit 0