#!/bin/bash

# weekly-review.sh
# Purpose: Weekly reflection and reporting
# Trigger: Friday at 5:00 PM (via cron or scheduler)
# Workflow: weekly-review.md

# Log hook execution
echo "$(date): weekly-review.sh triggered"

# Trigger the weekly review workflow
# This workflow compiles accomplishments, learnings, and generates the weekly report
claude run workflow weekly-review

# Check if workflow succeeded
if [ $? -eq 0 ]; then
    echo "$(date): weekly-review.sh completed successfully"
else
    echo "$(date): weekly-review.sh failed"
    exit 1
fi

exit 0