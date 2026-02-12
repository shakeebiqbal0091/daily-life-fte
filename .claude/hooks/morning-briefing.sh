#!/bin/bash

# morning-briefing.sh
# Purpose: Start the user's day with a comprehensive morning briefing
# Trigger: Daily at 7:00 AM (via cron or scheduler)
# Workflow: morning-routine.md

# Log hook execution
echo "$(date): morning-briefing.sh triggered"

# Trigger the morning routine workflow
# This workflow orchestrates multiple agents and skills to generate the briefing
claude run workflow morning-routine

# Check if workflow succeeded
if [ $? -eq 0 ]; then
    echo "$(date): morning-briefing.sh completed successfully"
else
    echo "$(date): morning-briefing.sh failed"
    exit 1
fi

exit 0