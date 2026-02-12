#!/bin/bash

# on-email-received.sh
# Purpose: React to important emails automatically
# Trigger: Incoming email event (via Gmail MCP webhook or polling)
# Workflow: Email Manager skill via Content Creator Agent

# Log hook execution
echo "$(date): on-email-received.sh triggered"

# Get email details from environment or stdin
EMAIL_ID="$1"
if [ -z "$EMAIL_ID" ]; then
    echo "$(date): No email ID provided"
    exit 1
fi

echo "$(date): Processing email ID: $EMAIL_ID"

# Trigger the email processing workflow
# This will use the Email Manager skill to draft appropriate responses
claude run workflow email-manager --email-id "$EMAIL_ID"

# Check if workflow succeeded
if [ $? -eq 0 ]; then
    echo "$(date): Email processing completed successfully"
else
    echo "$(date): Email processing failed"
    exit 1
fi

exit 0