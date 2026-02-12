#!/bin/bash

# auto-save-content.sh
# Purpose: Ensure no generated content is lost
# Trigger: After any content creation (via Content Creator Agent callback)
# Workflow: Save output to Google Drive

# Log hook execution
echo "$(date): auto-save-content.sh triggered"

# Get content details from environment or stdin
CONTENT_TYPE="$1"
CONTENT_ID="$2"
if [ -z "$CONTENT_TYPE" ] || [ -z "$CONTENT_ID" ]; then
    echo "$(date): Missing content type or ID"
    exit 1
fi

echo "$(date): Auto-saving $CONTENT_TYPE (ID: $CONTENT_ID)"

# Trigger the auto-save workflow
# This will save the generated content to Google Drive
claude run workflow auto-save-content --content-type "$CONTENT_TYPE" --content-id "$CONTENT_ID"

# Check if workflow succeeded
if [ $? -eq 0 ]; then
    echo "$(date): Content saved successfully"
else
    echo "$(date): Content save failed"
    exit 1
fi

exit 0